import { Component, OnInit } from '@angular/core';
import { FundService } from 'src/app/shared/fund.service';
import { Fund } from 'src/app/shared/fund.model';

@Component({
  selector: 'app-fund-list',
  templateUrl: './fund-list.component.html',
  styleUrls: ['./fund-list.component.css']
})
export class FundListComponent implements OnInit {

  constructor(private service: FundService) { }

  ngOnInit() {
    this.service.refreshList();
  }

  populateForm(fund: Fund) {
    // this.service.formData = fund;
    this.service.formData = Object.assign({}, fund);
  }
}
