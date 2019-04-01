import { Injectable } from '@angular/core';
import { Fund } from './fund.model';

@Injectable({
  providedIn: 'root'
})
export class FundService {
  fundFormData: Fund;

  constructor() { }
}
