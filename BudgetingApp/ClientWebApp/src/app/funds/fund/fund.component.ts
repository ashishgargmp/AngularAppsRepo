import { Component, OnInit } from '@angular/core';
import { FundService } from 'src/app/shared/fund.service';
import { NgForm } from '@angular/forms';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-fund',
  templateUrl: './fund.component.html',
  styleUrls: ['./fund.component.css']
})
export class FundComponent implements OnInit {

  constructor(private service: FundService,
              private toastr: ToastrService) { }

  ngOnInit() {
    this.resetForm();
  }

  resetForm(form?: NgForm) { // By putting ? in front of form, we made form variable as nullable
    if (form != null) {
      form.resetForm();
    }

    this.service.formData = {
     Id: null,
     Name: '',
     Desc: '',
     Type: '',
     Source: '',
     SetAmount: null,
     DueDate: null,
     FinancialYear: null,
     AssessmentYear: null,
     Frequency: ''
    };
  }

  onSubmit(form: NgForm) {
    if (form.value.Id == null) {
      this.insertRecord(form);
    } else {
      this.updateRecord(form);
    }
  }

  insertRecord(form: NgForm) {
      this.service.postFund(form.value).subscribe(res =>  {
      this.toastr.success('Inserted Successfully', 'Budget - App');
      this.resetForm(form);
      this.service.refreshList();
    });
  }

  updateRecord(form: NgForm) {
    this.service.putFund(form.value).subscribe(res => {
      this.toastr.success('Updated Successfully', 'Budget - App');
      this.resetForm(form);
      this.service.refreshList();
    });
  }
}
