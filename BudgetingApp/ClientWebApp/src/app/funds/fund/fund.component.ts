import { Component, OnInit } from '@angular/core';
import { FundService } from 'src/app/shared/fund.service';
import { NgForm } from '@angular/forms';

@Component({
  selector: 'app-fund',
  templateUrl: './fund.component.html',
  styleUrls: ['./fund.component.css']
})
export class FundComponent implements OnInit {

  constructor(private service: FundService) { }

  ngOnInit() {
    this.resetForm();
  }

  resetForm(form?: NgForm){ // By putting ? in front of form, we made form variable as nullable
    if (form != null) {
      form.resetForm();
    }

    this.service.fundFormData = {
     Id: null,
     Name: '',
     Desc: '',
     Type: '',
     Source: '',
     Amount: null,
     DueDate: null,
     FinancialYear: null,
     AssessmentYear: null,
     Frequency: ''
     
    };
  }


}
