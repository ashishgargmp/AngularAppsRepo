import { Injectable } from '@angular/core';
import { Fund } from './fund.model';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class FundService {
  formData: Fund;
  list: Fund[];
  readonly rootURL = 'http://localhost:61077/api';

  constructor(private http: HttpClient) { }

  postFund(formData: Fund) {
    return this.http.post(this.rootURL + '/Fund', formData);
  }

  // To get the list of the Funds - GetFunds API get called here
  refreshList() {
    this.http.get(this.rootURL + '/Fund')
    .toPromise().then(res => this.list = res as Fund[]);
  }

  putFund(formData: Fund) {
    return this.http.put(this.rootURL + '/Fund/' + formData.Id, formData);
  }
}
