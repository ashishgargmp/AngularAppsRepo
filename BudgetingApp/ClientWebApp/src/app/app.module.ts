import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';


import { AppComponent } from './app.component';
import { FundsComponent } from './funds/funds.component';
import { FundComponent } from './funds/fund/fund.component';
import { FundListComponent } from './funds/fund-list/fund-list.component';
import { FundService } from './shared/fund.service';
import { FormsModule } from "@angular/forms";

@NgModule({
  declarations: [
    AppComponent,
    FundsComponent,
    FundComponent,
    FundListComponent
  ],
  imports: [
    BrowserModule,
    FormsModule
  ],
  providers: [FundService],
  bootstrap: [AppComponent]
})
export class AppModule { }
