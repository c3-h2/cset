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
import { Component, OnInit } from '@angular/core';
import { DiagramService } from '../../../services/diagram.service';
import { saveAs } from "file-saver";
import { Router } from '@angular/router';

@Component({
  selector: 'app-diagram-inventory',
  templateUrl: './diagram-inventory.component.html'
})
export class DiagramInventoryComponent implements OnInit {

  constructor(public diagramSvc: DiagramService, public router: Router) { }

  ngOnInit() {
  }

  getExport() {
    this.diagramSvc.getExport().subscribe(data => {
      saveAs(data, 'diagram-inventory-export.xlsx');
    },
      error => {
        console.log('Error downloading file');
      });
  }

  navToDiagram() {
    this.router.navigateByUrl("/assessment/" + localStorage.getItem('assessmentId') + "/prepare/diagram/info");
  }
}
