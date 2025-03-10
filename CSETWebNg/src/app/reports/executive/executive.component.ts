////////////////////////////////
//
//   Copyright 2022 Battelle Energy Alliance, LLC
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//
////////////////////////////////
import { Component, OnInit, AfterViewChecked } from '@angular/core';
import { ReportAnalysisService } from '../../services/report-analysis.service';
import { ReportService } from '../../services/report.service';
import { Title } from '@angular/platform-browser';
import { AcetDashboard } from '../../models/acet-dashboard.model';
import { ACETService } from '../../services/acet.service';
import  Chart  from 'chart.js/auto';


@Component({
  selector: 'executive',
  templateUrl: './executive.component.html', 
  styleUrls: ['../reports.scss']
})
export class ExecutiveComponent implements OnInit, AfterViewChecked {
  response: any;

  chartPercentCompliance: Chart;
  chartStandardsSummary: Chart;
  canvasStandardResultsByCategory: Chart;
  responseResultsByCategory: any;


  // Charts for Components
  componentCount = 0;
  chartComponentSummary: Chart;
  chartComponentsTypes: Chart;
  warningCount = 0;
  chart1: Chart;
  tempChart: Chart;

  numberOfStandards = -1;

  pageInitialized = false;

  acetDashboard: AcetDashboard;


  constructor(
    public reportSvc: ReportService,
    public analysisSvc: ReportAnalysisService,
    private titleService: Title,
    public acetSvc: ACETService
  ) { }

  ngOnInit() {
    this.titleService.setTitle("Executive Summary - CSET");

    this.reportSvc.getReport('executive').subscribe(
      (r: any) => {
        this.response = r;
      },
      error => console.log('Executive report load Error: ' + (<Error>error).message)
    );

    // Summary Percent Compliance
    this.analysisSvc.getDashboard().subscribe(x => {
      this.chartPercentCompliance = this.analysisSvc.buildPercentComplianceChart('canvasCompliance', x);
    });

    // Standards Summary (pie or stacked bar)
    this.analysisSvc.getStandardsSummary().subscribe(x => {
      this.chartStandardsSummary = this.analysisSvc.buildStandardsSummary('canvasStandardSummary', x);
    });

    // Standards By Category
    this.analysisSvc.getStandardsResultsByCategory().subscribe(x => {
      this.responseResultsByCategory = x;

      // Standard Or Question Set (multi-bar graph)
      this.canvasStandardResultsByCategory = this.analysisSvc.buildStandardResultsByCategoryChart('canvasStandardResultsByCategory', x);
    });

    // Component Summary
    this.analysisSvc.getComponentSummary().subscribe(x => {
      setTimeout(() => {
        this.chartComponentSummary = this.analysisSvc.buildComponentSummary('canvasComponentSummary', x);
      }, 0);
    });


    this.tempChart = Chart.getChart('canvasComponentTypes');
    if(this.tempChart){
      this.tempChart.destroy();
    }
    // Component Types (stacked bar chart)
    this.analysisSvc.getComponentTypes().subscribe(x => {
      this.componentCount = x.labels.length;
      setTimeout(() => {
        this.chartComponentsTypes = this.analysisSvc.buildComponentTypes('canvasComponentTypes', x);
      }, 0);
    });

    this.acetSvc.getAcetDashboard().subscribe(
      (data: AcetDashboard) => {
        this.acetDashboard = data;

        for (let i = 0; i < this.acetDashboard.irps.length; i++) {
          this.acetDashboard.irps[i].comment = this.acetSvc.interpretRiskLevel(this.acetDashboard.irps[i].riskLevel);
        }
      },
      error => {
        console.log('Error getting all documents: ' + (<Error>error).name + (<Error>error).message);
        console.log('Error getting all documents: ' + (<Error>error).stack);
      });
  }

  ngAfterViewChecked() {

  }
}
