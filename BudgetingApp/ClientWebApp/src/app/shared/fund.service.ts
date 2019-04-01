import { Injectable } from '@angular/core';
import { Fund } from './fund.model';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class FundService {
  formData: Fund;
  readonly rootURL = 'http://localhost:61077/api';

  constructor(private http: HttpClient) { }

  postFund(formData: Fund) {
    return this.http.post(this.rootURL + '/Fund', formData);
  }
}
