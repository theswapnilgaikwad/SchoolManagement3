<jsp:include page="../header.jsp" />
<body onload="getConmapnyDetails()" class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
   <form method="post" action="updateCompanyDetails" modelAttribute="updateCompanyDetails" id="form1">
      <div style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">
         <!-- Header Start-->
         <jsp:include page="../menu.jsp" />
         <!-- Header End -->
         <!-- Left side column. contains the logo and sidebar -->
         <!-- Aside Menu Start-->
         <jsp:include page="../asideMenu.jsp" />
         <!-- Aside Menu end -->
         <script type="text/javascript">
            //<![CDATA[
            Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'form1', [], [], [], 90, 'ctl00');
            //]]>
         </script>
         <!-- Content Wrapper. Contains page content -->
         <div class="content-wrapper" style="min-height: 1105.75px;">
            <section class="content-header">
               <h1 id="ContentPlaceHolder1_IdHeader">Company Setting</h1>
               <ol class="breadcrumb">
                  <li><a href="Home.html"><i class="fa fa-dashboard"></i> Home</a></li>
                  <li><a href="#">Dashboard</a></li>
                  <li class="active">Setting</li>
               </ol>
            </section>
            <section class="content">
               <div class="row">
                  <div class="col-md-10">
                     <div class="box box-success">
                        <div class="box-header with-border">
                           <h3 class="box-title">Company Details</h3>
                           <div class="box-tools pull-right">
                              <button type="button" name="BtnEdit" 
                              id="BtnEdit"
                              onclick="enableDisabledField()">
                              <img src="dist/img/pen_paper_2-32.png"/>
                              </button>
                           </div>
                        </div>
                        <div id="ContentPlaceHolder1_pnlCdetails" class="aspNetDisabled">
                           <div class="box-body">
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Company Name :</label>
                                    <input name="companyName" type="text" value="EQFI NIDHI LIMITED" 
                                    disabled="disabled" id="companyName" class="form-control" autocomplete="off" />
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Short Name :</label>
                                    <input name="shortName" type="text" value="EQFI" maxlength="4" 
                                    disabled="disabled" id="shortName" class="form-control" autocomplete="off" />
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Registration Date :</label>
                                    <div class="input-group date">
                                       <div class="input-group-addon">
                                          <i class="fa fa-calendar"></i>
                                       </div>
                                       <input name="doj" type="text" value="27/06/2022" disabled="disabled" 
                                       id="doj" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />                          
                                    </div>
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>CIN No. :</label>
                                    <input name="cin" type="text" value="U65990MH2022PLN385483" 
                                    disabled="disabled" id="cin" class="form-control" autocomplete="off" />
                                 </div>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>PAN :</label>
                                    <input name="pan" type="text" value="AAHCE1130D" disabled="disabled" id="pan" class="form-control" autocomplete="off" />
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>TAN :</label>
                                    <input name="tan" type="text" value="NGPE01436B" disabled="disabled" id="tan" class="form-control" autocomplete="off" />
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>GSTIN :</label>
                                    <input name="gst" type="text" disabled="disabled" id="gst" class="form-control" autocomplete="off" />
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Nominal Share Value :</label>
                                    <input name="shareValue" type="text" value="10" disabled="disabled" id="shareValue" class="form-control" autocomplete="off" onkeypress="return isNumberKey(this, event);" />
                                 </div>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Address :</label>
                                    <input name="address" type="text" value="PLOT NO 36 DATE LAYOUT JAYTALA ROAD NAGPUR" disabled="disabled" id="address" class="form-control" autocomplete="off" />
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>State :</label>
                                    <select name="state" disabled="disabled" id="state" class="form-control select2" style="width: 100%;">
                                       <option value="ANDRA PRADESH">ANDRA PRADESH</option>
                                       <option value="ARUNACHAL PRADESH">ARUNACHAL PRADESH</option>
                                       <option value="ASSAM">ASSAM</option>
                                       <option value="BIHAR">BIHAR</option>
                                       <option value="CHHATTISGARH">CHHATTISGARH</option>
                                       <option value="DELHI">DELHI</option>
                                       <option value="GUJARAT">GUJARAT</option>
                                       <option value="HARYANA">HARYANA</option>
                                       <option value="HIMACHAL PRADESH">HIMACHAL PRADESH</option>
                                       <option value="JAMMU AND KASHMIR">JAMMU AND KASHMIR</option>
                                       <option value="JHARKHAND">JHARKHAND</option>
                                       <option value="KARNATAKA">KARNATAKA</option>
                                       <option value="KERALA">KERALA</option>
                                       <option value="MADYA PRADESH">MADYA PRADESH</option>
                                       <option selected="selected" value="MAHARASHTRA">MAHARASHTRA</option>
                                       <option value="MANIPUR">MANIPUR</option>
                                       <option value="MEGHALAYA">MEGHALAYA</option>
                                       <option value="MIZORAM">MIZORAM</option>
                                       <option value="NAGALAND">NAGALAND</option>
                                       <option value="ODISSA">ODISSA</option>
                                       <option value="PUNJAB">PUNJAB</option>
                                       <option value="RAJASTHAN">RAJASTHAN</option>
                                       <option value="SIKKIM">SIKKIM</option>
                                       <option value="TAMIL NADU">TAMIL NADU</option>
                                       <option value="TRIPURA">TRIPURA</option>
                                       <option value="UTTAR PRADESH">UTTAR PRADESH</option>
                                       <option value="UTTARAKHAND">UTTARAKHAND</option>
                                       <option value="WEST BENGAL">WEST BENGAL</option>
                                    </select>
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Pin Code :</label>
                                    <input name="pinCode" type="text" value="440036" disabled="disabled" id="pinCode" class="form-control" autocomplete="off" onkeypress="return isNumberKey(this, event);" />
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Email ID :</label>
                                    <input name="email" type="text" value="EQFIOFFICIAL@GMAIL.COM" disabled="disabled" id="email" class="form-control" autocomplete="off" />
                                 </div>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Authorized Capital :</label>
                                    <input name="authorizedcapital" type="text" value="2100000" disabled="disabled" id="authorizedcapital" class="form-control" autocomplete="off" onkeypress="return isNumberKey(this, event);" />
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>PaidUp Capital :</label>
                                    <input name="paidup" type="text" value="2100000" disabled="disabled" id="paidup" class="form-control" autocomplete="off" onkeypress="return isNumberKey(this, event);" />
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>NOF :</label>
                                    <input name="landLine" type="text" value="0" disabled="disabled" id="landLine" class="form-control" autocomplete="off" />
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Mobile No :</label>
                                    <input name="mobile" type="text" value="8975689756" disabled="disabled" id="mobile" class="form-control" autocomplete="off" />
                                 </div>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>TDS (With PAN) :</label>
                                    <input name="TDSWithPAN" type="text" value="0" disabled="disabled" id="TDSWithPAN" class="form-control" autocomplete="off" onkeypress="return isNumberKey(this, event);" />
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>TDS (Without PAN) :</label>
                                    <input name="TDSWithoutPAN" type="text" value="0" disabled="disabled" id="TDSWithoutPAN" class="form-control" autocomplete="off" onkeypress="return isNumberKey(this, event);" />
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>GST(%):</label>
                                    <input name="tax" type="text" value="0" disabled="disabled" id="tax" class="form-control" autocomplete="off" onkeypress="return isNumberKey(this, event);" />
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>TAX Deduction :</label>
                                    <input name="taxSr" type="text" value="0" disabled="disabled" id="taxSr" class="form-control" autocomplete="off" onkeypress="return isNumberKey(this, event);" />
                                 </div>
                              </div>
                              <div class="clearfix margin-bottom-10"></div>
                              <br>
                              <div class="row col-md-12">
                              <button class="btn btn-info pull-right margin-r-5" id="updateBtn" disabled>Update</button>
                           	  </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-2">
                     <div class="box box-success">
                        <div class="box-header with-border">
                           <h3 class="box-title">Logo </h3>
                           <p class="help-block">Maximum 10MB</p>
                        </div>
                        <div class="box-body">
                           <div class="col-md-3">
                              <div class="form-group">
                                 <div class="text-center">
                                    <img id="ContentPlaceHolder1_imglogo" class="profile-user-img" src="data:image/png;base64,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" style="width:110px;" />
                                 </div>
                              </div>
                           </div>
                           <div class="clearfix"></div>
                        </div>
                     </div>
                     <div class="box box-success">
                        <div class="box-header with-border">
                           <h3 class="box-title">Signature </h3>
                           <p class="help-block">Maximum 10MB</p>
                        </div>
                        <div class="box-body">
                           <div class="col-md-3">
                              <div class="form-group">
                                 <div class="text-center">
                                    <img id="ContentPlaceHolder1_imgSignature" class="profile-user-img" src="data:image/png;base64,/9j/4RHWRXhpZgAATU0AKgAAAAgABwESAAMAAAABAAEAAAEaAAUAAAABAAAAYgEbAAUAAAABAAAAagEoAAMAAAABAAIAAAExAAIAAAAeAAAAcgEyAAIAAAAUAAAAkIdpAAQAAAABAAAApAAAANAACvyAAAAnEAAK/IAAACcQQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykAMjAyMTowMToyMyAyMjo0ODo0MgAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAyKADAAQAAAABAAAAyAAAAAAAAAAGAQMAAwAAAAEABgAAARoABQAAAAEAAAEeARsABQAAAAEAAAEmASgAAwAAAAEAAgAAAgEABAAAAAEAAAEuAgIABAAAAAEAABCgAAAAAAAAAEgAAAABAAAASAAAAAH/2P/tAAxBZG9iZV9DTQAB/+4ADkFkb2JlAGSAAAAAAf/bAIQADAgICAkIDAkJDBELCgsRFQ8MDA8VGBMTFRMTGBEMDAwMDAwRDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAENCwsNDg0QDg4QFA4ODhQUDg4ODhQRDAwMDAwREQwMDAwMDBEMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwM/8AAEQgAoACgAwEiAAIRAQMRAf/dAAQACv/EAT8AAAEFAQEBAQEBAAAAAAAAAAMAAQIEBQYHCAkKCwEAAQUBAQEBAQEAAAAAAAAAAQACAwQFBgcICQoLEAABBAEDAgQCBQcGCAUDDDMBAAIRAwQhEjEFQVFhEyJxgTIGFJGhsUIjJBVSwWIzNHKC0UMHJZJT8OHxY3M1FqKygyZEk1RkRcKjdDYX0lXiZfKzhMPTdePzRieUpIW0lcTU5PSltcXV5fVWZnaGlqa2xtbm9jdHV2d3h5ent8fX5/cRAAICAQIEBAMEBQYHBwYFNQEAAhEDITESBEFRYXEiEwUygZEUobFCI8FS0fAzJGLhcoKSQ1MVY3M08SUGFqKygwcmNcLSRJNUoxdkRVU2dGXi8rOEw9N14/NGlKSFtJXE1OT0pbXF1eX1VmZ2hpamtsbW5vYnN0dXZ3eHl6e3x//aAAwDAQACEQMRAD8A9VSUd3kUt3kUlMklHd5FLd5FJTJJR3eRS3eRSUySUd3kUt3kUlMklHd5FLd5FJTJJR3eRS3eRSUySUd3kUt3kUlMklHd5FLd5FJTJJR3eRS3eRSUySUd3kUt3kUlP//Q9VSSSSUpJJJJSkkkklKSSSSUpJJJJSkkkklKSSSSUpJJJJSkkkklKSSSSU//0fVUklV6j1PB6Zj/AGnNtFVZcK2CC5z3u/m6aaqw6266z8yqpnqJKbSSw/8AnD1DZ9o/YWf9lid36D1Y/e+xfaftH9j+f/4FaeB1DD6jjNysK0XUuJG4AghwO19dlbw2yq1jv5yqxvqMSU2UkkklKSSSSUpJJJJSkkkklKSSSSUpJJJJSkkkklKSWP1LqXUz1KvpnR2UWZDKjlZbsneK21k+lj0B9Idsvy7W27LP0vpVYt36Gz9GrXReqDq3Tas4VGn1C9pYXB43VudS91Vtfsuoc+vdRd/hqv0iSn//0vVVhYVLc/6zZ+dkAP8A2SWYeC06+mbKq8vMyA0/Ruv+0VY/qf6Cj/hbVurBsd+yPrP61kNwuutZU55MBmbSC2hrp/7nYn6Jn/DYddf+HSU7ywnNHT/rdV6J209Zx7XX1D6Pr4pp9PJ/r2417qbv3/Qxv3Fuqm/ptVnVauqPe91lFD6KqtNjRa5ll1v0d/qv9Gqv6f0ElNxJJJJSkkkklKSSSSUpJJJJSkkkklKSSSSUpCycinFx7crIeK6KGOstsPDWMG97z/Va1FXO/WTLxMrqPTvq7dfXUzLeMjLbY4N301OHoYbN307M7M9Nnp/4TGozElNH9dHS++P1v62X+XqY9Bb/ANbdu6b0qv8A9yL/APhl1eNj0YuPVi47BXRQxtdVY4axg2MYP6rWrI6P/lPq2Z1s649W7A6d4Gut36/kt9zm/rObX6O7/Q4VP+kW4kp//9P1VVuo4GN1LCtwcpu6m5sOjQgg7mWVu/Mtqsa2yqz/AAdispJKcbo3Uc2u93ResEHqNDd9GS0bWZdAO0ZVbf8AB5NftZn43+Cu/S1fq19K2VQ6x0pnU8YMbYcbKod6uHlsAL6bQPba1rva9n5l1L/0d9O+mxD6H1W3Oqtx81jKeqYLhVnUMJLQ4jdXkUb/ANJ9ky2fpcZz/wDif56m1JTppIOX9r+zWfYvT+07T6PrT6e7831PT9+z+qql/wBYOjUdRb0y3Ka3McWNNcOIa6z+Yruta30aLciP1eq6yuy//BJKdFJDddU3RzhPhyoHMpHifkiIk9CtM4jchOkq/wBtq8D+CQzaT4j5I8Euyvch3DYVOvqTbOrXdMbWSceiu+y2RtHrOurqq2/S3/q1j1YbdU6IcNeJ0/Ksj6u/rGZ1nqUf0jNNFZ7GvEYzD9v/AKFMy00gjdIIOxt20kkkkqSSSSUwuuqx6bL7niumppfY9xgNa0bnvcf3WtXG3NtyOi3XXVNd1T633Nrxqbmh/o4+0/ZfUqd7f8ndOZb1G3/u8+z/AEi2PrD/AJRysT6vMMtyz9o6hB4w6S31Kne5rv17INWJ/wAR9q/0aXS/8q9cyusO1xsLf0/p3gS1w/aeW3/jMmtmGz/wlZ/pklOthYePg4dGFjN2UY1baqm8w1g2M1/qhHSSSU//1PVVndS65h9PtrxdtmVn3DdTg47d9zmzs9VwJZXRQ13/AGoybKaP+EV2+5lFNl7/AKFTS90eDRuKyPqniAdLZ1W8B3UOsNZmZl3cmxu+jHBdP6DDoe3Hor/7/bYkpQt+uGVDmUYXTaz2vfZlWj+vXj/Y6G/2Mq1ZXWcHr3T8nG61Z1SsPL2YOVbVitYBRkPayp72W3X+p9mzHVenuf8Aoa78r/SLq7721Nnlx4C5v62Off0PIqJmzIsx6Kh/LsyKWV7U4QJF9FksgBEeqGzrfWumZfUG35dfUcbpWE/KzHGgUuFrg5+Hi1uqtd77GVWW3fo/ZX6P+lQM7DGF9SszFyG+tlZdBN+gLruoZe3Y/Qfzv222plH+irqr/wBEi4mGOp9O6/S94a7qmZnUOsOu30/8nY5/603HYqmV1rEyMXG9Zhd9ZcJxZT0hx97c4VGr7VbR9CzBx6/UzaOof0dmP+k/nk4AAeY0WGRJq9jrT0WNdXkY9V1Vrchj2Ai5p9r4G19jf7bXKNuXjU5GPjWv235bntx64JLjW31ruPosrr+k9655jKD9Xfqx0297WYmSym3Ne47WGnFod1Kze930Kn310usd/o0bo2Rf1P6xZnVchprq+w0/sykzubi5Fts5FrPotuznYnrf8HR6NSeJbBjMNz01d622qmp119jKaaxL7bHBjGj+XY/a1qeqyq6pt9L2202CWW1uDmOHiyxkscsqrFr6t1vKsy2tuxulW14uHjvAdWMh1bMnKzn1OG2y9rb6sfG3/wAxss9P+cVH6p0WW9R631YMNGDflPx+n4zSRVtpdsy8qqofov1m+v3vZ/hfWS4jaOEUddQ6XUMOzHOR1XF6hfg2VsN17Hfp8VwqbvcX4V5/Reyv/tHdjKr9Tuo59OOzpWRS1tuPj15d19Vm9m/Mc/K+z5NVjWW0Zz/Ufe6tnrV+l/hP0las/WQh/SX4e7a7qVtGA34ZNrKr/wD2W9ZZ/Seu4NeG/wBLdndXz8rIvd02g7r95tOPTXkz7MGnGxq8emy/K9NlddaBriXRvg03vR6xnV8E5Jw7LRXksp+0vYZAbSHen6z7P5tjd/770s/rnR+mtrfn5tOMLhNXqPaC8eNbZ3P/ALK4jomOetdQvPURXc1uS67rQZrS+6l78TpPSWzs9XEwaKn591drP5yzG9T+cV/oHTc3FszOodFbjnJrycjGzOl3j02srrsc7EpwMmtj7cFjsd1eT6L68jDv+0epWzGUch16M8DehNkbvX4edhZ9DcnBvryaHaNtqcHtJHI3MJRXvZWx1ljgxjAXOc4wABqXOJWB0rGzbOv2dT/Zzuk024xrzWPfU45GRvY7HtazEstZ+q1faGPy7dlt3r11en+hRfrK52c7F+r1JIPUyXZhBgtwqtrs3j/uVvpwP/Qr/gk1c5jMzL/Z1/WKJb1T6y2sx+lNcD+ioh7cGxzP0ntpxftPWMj/AI22pdP0/Ax+nYNGBit20Y1ba6weYaI3PP51j/pWP/fWV09rep9eyOobR9k6UHYGCI0Nun7SyGe3/BuZVgV/8Rl/6VbqSlJJJJKf/9X1K2tltT6rBLLGlrh4gja5Y31XyXU4Q6HmHZ1DpDG0WNOnqUs/R4mdVq7fTkUNZu/0eR61H+DW4s/qvRsLqbWPuD68nHk4+VQ81X1lw2u9G9nu2v8A8JU/9Db/AIWtJSO2w2WFx+Sx7z+0euUYrROL0dwyssxo7Lc0swMSf3sap9mdf/o/1RSPSurumt/Xcr0ToS2jGbdH/hptXt/4xtG9XcPDxcHHbjYrPTqaS6JLnOc47rLbbH7rLbrHe6y2xT1elUGpYFm7JVkZGH0/FtyshzMbFqmy6yIALjq7awbrLrrHfRZ+lvuWRn5nX7umZmc3Gx+mY1eJc6Mtrrs11YY6zbZXQ+mnC3f6F9+T6f8Aha/zFY2jqfXHbwH4XQ3NDGkAtf1B7fUNvJb/AJMxbGel7f6Vk/8ABKX1pe5v1b6kG/Sup9AfG9zMb/0akdQewSNCBuS1MTolud0/p+J1uqp1PTmUvxnYz3BtzfS9J2LnY1rS9jGt9P1mNtfTlf8AgS0Oo4OXblVdS6fZXXn0sdS9t4JpvocfUONkOr/S0+nb+mxsmr+Y9/6OyqxaDgGuLRw32j4D2pkREUgzN24rOkdSybsm7IyT0yrOeH5mFh2C31C1jaPUZ1Cyqi3EdfWxteSyir6Ff6O6qz1FNnRs3B9SroeZVg4dskYd1Hr10PI/SW9P220Op9R36V2Nd61Hr/pPz1rpJcIRxli0EMaHO9RzQAXkAEuAg2bW+1jnfyE7GtY5zmNa1zyHPc0AFxHDrC0fpP7adJFCHEwsXDbYzFqFTb7X5FoEndbad91rt37yNm9AqybW5uNfb0/qTWBhy8ciXhoO2vKotbZj5VTN3t9av1K/8DbUrOJjlzhY4e0cDxV1RZCNh0Z8MTrI9XD+0fW3C9t2LjdWrEAW4zzi2x/Kxcr1sfd/6HsWJn4XW+tdfdkYvT7+mWHFrpb1HItFbsZ7bLnWfZ2YN17Ooturu9+La9mNvoq9Wxduko2Zq9M6fj9MwKMDGB9LHYGAu1c48vtsd+dba/dZa/8A0itJJJKUkkkkp//W9VSSSSU08rGMmxgkHUhUrb68aqzIt0roY62z+rW02O/6lbKyvrLii3oHVG1t/Svw8hrY7k1vhSRyaUWGWGzY+ocz6uUPp6HiOu1yMphzMk9zdlE5d0/1fV9NR6+Dazp2ENftnUcZrh4soLuoW/8ARxVq4NIyOn4uRjkGq2ip9f8AVLGlizbqLMj60YtAaSOmYluTZGoFuU77Hij+t6FGancQ4QAVnDLiJIPUuiTJJ8TKSJ9nu/cKQxrz+anWO4WcJ7H7EaSO3CtPJDUZmFWPpEuQM4jquGKZ6V5tNrXOMNElWqcOPdbr/JVlrGsENACkmSyE7aMscIGstfyW40CdJJRsqkkkklKSSSSUpJJJJT//1/VUkkklKSSSSU87i431i6LV+zOnYuPnYLC4YNtt7qXU1k7q8fJZ6OS66vG3enTbS7f6GzfX/hFo9G6U/BbfflWNyOoZ1nq5l7W7GkgenVTSyXuZjY1TfSpY97/9K/8AS22LRSSUpJJJJSkkkklKSSSSUpJJJJSkkkklKSSSSUpJJJJT/9D1VJR3Dz+4pbh5/cUlMklHcPP7iluHn9xSUySUdw8/uKW4ef3FJTJJR3Dz+4pbh5/cUlMklHcPP7iluHn9xSUySUdw8/uKW4ef3FJTJJR3Dz+4pbh5/cUlMklHcPP7iluHn9xSUySUdw8/uKW4ef3FJTJJR3Dz+4pbh5/cUlP/2f/tGdRQaG90b3Nob3AgMy4wADhCSU0EJQAAAAAAEAAAAAAAAAAAAAAAAAAAAAA4QklNBDoAAAAAAOUAAAAQAAAAAQAAAAAAC3ByaW50T3V0cHV0AAAABQAAAABQc3RTYm9vbAEAAAAASW50ZWVudW0AAAAASW50ZQAAAABDbHJtAAAAD3ByaW50U2l4dGVlbkJpdGJvb2wAAAAAC3ByaW50ZXJOYW1lVEVYVAAAAAEAAAAAAA9wcmludFByb29mU2V0dXBPYmpjAAAADABQAHIAbwBvAGYAIABTAGUAdAB1AHAAAAAAAApwcm9vZlNldHVwAAAAAQAAAABCbHRuZW51bQAAAAxidWlsdGluUHJvb2YAAAAJcHJvb2ZDTVlLADhCSU0EOwAAAAACLQAAABAAAAABAAAAAAAScHJpbnRPdXRwdXRPcHRpb25zAAAAFwAAAABDcHRuYm9vbAAAAAAAQ2xicmJvb2wAAAAAAFJnc01ib29sAAAAAABDcm5DYm9vbAAAAAAAQ250Q2Jvb2wAAAAAAExibHNib29sAAAAAABOZ3R2Ym9vbAAAAAAARW1sRGJvb2wAAAAAAEludHJib29sAAAAAABCY2tnT2JqYwAAAAEAAAAAAABSR0JDAAAAAwAAAABSZCAgZG91YkBv4AAAAAAAAAAAAEdybiBkb3ViQG/gAAAAAAAAAAAAQmwgIGRvdWJAb+AAAAAAAAAAAABCcmRUVW50RiNSbHQAAAAAAAAAAAAAAABCbGQgVW50RiNSbHQAAAAAAAAAAAAAAABSc2x0VW50RiNQeGxAUgAAAAAAAAAAAAp2ZWN0b3JEYXRhYm9vbAEAAAAAUGdQc2VudW0AAAAAUGdQcwAAAABQZ1BDAAAAAExlZnRVbnRGI1JsdAAAAAAAAAAAAAAAAFRvcCBVbnRGI1JsdAAAAAAAAAAAAAAAAFNjbCBVbnRGI1ByY0BZAAAAAAAAAAAAEGNyb3BXaGVuUHJpbnRpbmdib29sAAAAAA5jcm9wUmVjdEJvdHRvbWxvbmcAAAAAAAAADGNyb3BSZWN0TGVmdGxvbmcAAAAAAAAADWNyb3BSZWN0UmlnaHRsb25nAAAAAAAAAAtjcm9wUmVjdFRvcGxvbmcAAAAAADhCSU0D7QAAAAAAEABIAAAAAQACAEgAAAABAAI4QklNBCYAAAAAAA4AAAAAAAAAAAAAP4AAADhCSU0EDQAAAAAABAAAAHg4QklNBBkAAAAAAAQAAAAeOEJJTQPzAAAAAAAJAAAAAAAAAAABADhCSU0nEAAAAAAACgABAAAAAAAAAAI4QklNA/UAAAAAAEgAL2ZmAAEAbGZmAAYAAAAAAAEAL2ZmAAEAoZmaAAYAAAAAAAEAMgAAAAEAWgAAAAYAAAAAAAEANQAAAAEALQAAAAYAAAAAAAE4QklNA/gAAAAAAHAAAP////////////////////////////8D6AAAAAD/////////////////////////////A+gAAAAA/////////////////////////////wPoAAAAAP////////////////////////////8D6AAAOEJJTQQAAAAAAAACAAI4QklNBAIAAAAAAAYAAAAAAAA4QklNBDAAAAAAAAMBAQEAOEJJTQQtAAAAAAAGAAEAAAAEOEJJTQQIAAAAAAAQAAAAAQAAAkAAAAJAAAAAADhCSU0EHgAAAAAABAAAAAA4QklNBBoAAAAAA0kAAAAGAAAAAAAAAAAAAADIAAAAyAAAAAoAVQBuAHQAaQB0AGwAZQBkAC0AMQAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAyAAAAMgAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAQAAAAAAAG51bGwAAAACAAAABmJvdW5kc09iamMAAAABAAAAAAAAUmN0MQAAAAQAAAAAVG9wIGxvbmcAAAAAAAAAAExlZnRsb25nAAAAAAAAAABCdG9tbG9uZwAAAMgAAAAAUmdodGxvbmcAAADIAAAABnNsaWNlc1ZsTHMAAAABT2JqYwAAAAEAAAAAAAVzbGljZQAAABIAAAAHc2xpY2VJRGxvbmcAAAAAAAAAB2dyb3VwSURsb25nAAAAAAAAAAZvcmlnaW5lbnVtAAAADEVTbGljZU9yaWdpbgAAAA1hdXRvR2VuZXJhdGVkAAAAAFR5cGVlbnVtAAAACkVTbGljZVR5cGUAAAAASW1nIAAAAAZib3VuZHNPYmpjAAAA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b2JlLmNvbS9waG90b3Nob3AvMS4wLyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M2IChXaW5kb3dzKSIgeG1wOkNyZWF0ZURhdGU9IjIwMjEtMDEtMjNUMjI6NDg6NDIrMDU6MzAiIHhtcDpNZXRhZGF0YURhdGU9IjIwMjEtMDEtMjNUMjI6NDg6NDIrMDU6MzAiIHhtcDpNb2RpZnlEYXRlPSIyMDIxLTAxLTIzVDIyOjQ4OjQyKzA1OjMwIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkNDRTMzRUY4OUQ1REVCMTFCQkJGQTI3NDI0NkVDREE1IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkNCRTMzRUY4OUQ1REVCMTFCQkJGQTI3NDI0NkVDREE1IiB4bXBNTTpPcmlnaW5hbERvY3VtZW50SUQ9InhtcC5kaWQ6Q0JFMzNFRjg5RDVERUIxMUJCQkZBMjc0MjQ2RUNEQTUiIGRjOmZvcm1hdD0iaW1hZ2UvanBlZyIgcGhvdG9zaG9wOkNvbG9yTW9kZT0iMyIgcGhvdG9zaG9wOklDQ1Byb2ZpbGU9InNSR0IgSUVDNjE5NjYtMi4xIj4gPHhtcE1NOkhpc3Rvcnk+IDxyZGY6U2VxPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iY3JlYXRlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDpDQkUzM0VGODlENURFQjExQkJCRkEyNzQyNDZFQ0RBNSIgc3RFdnQ6d2hlbj0iMjAyMS0wMS0yM1QyMjo0ODo0MiswNTozMCIgc3RFdnQ6c29mdHdhcmVBZ2VudD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiLz4gPHJkZjpsaSBzdEV2dDphY3Rpb249InNhdmVkIiBzdEV2dDppbnN0YW5jZUlEPSJ4bXAuaWlkOkNDRTMzRUY4OUQ1REVCMTFCQkJGQTI3NDI0NkVDREE1IiBzdEV2dDp3aGVuPSIyMDIxLTAxLTIzVDIyOjQ4OjQyKzA1OjMwIiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgQ1M2IChXaW5kb3dzKSIgc3RFdnQ6Y2hhbmdlZD0iLyIvPiA8L3JkZjpTZXE+IDwveG1wTU06SGlzdG9yeT4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPD94cGFja2V0IGVuZD0idyI/Pv/iDFhJQ0NfUFJPRklMRQABAQAADEhMaW5vAhAAAG1udHJSR0IgWFlaIAfOAAIACQAGADEAAGFjc3BNU0ZUAAAAAElFQyBzUkdCAAAAAAAAAAAAAAABAAD21gABAAAAANMtSFAgIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEWNwcnQAAAFQAAAAM2Rlc2MAAAGEAAAAbHd0cHQAAAHwAAAAFGJrcHQAAAIEAAAAFHJYWVoAAAIYAAAAFGdYWVoAAAIsAAAAFGJYWVoAAAJAAAAAFGRtbmQAAAJUAAAAcGRtZGQAAALEAAAAiHZ1ZWQAAANMAAAAhnZpZXcAAAPUAAAAJGx1bWkAAAP4AAAAFG1lYXMAAAQMAAAAJHRlY2gAAAQwAAAADHJUUkMAAAQ8AAAIDGdUUkMAAAQ8AAAIDGJUUkMAAAQ8AAAIDHRleHQAAAAAQ29weXJpZ2h0IChjKSAxOTk4IEhld2xldHQtUGFja2FyZCBDb21wYW55AABkZXNjAAAAAAAAABJzUkdCIElFQzYxOTY2LTIuMQAAAAAAAAAAAAAAEnNSR0IgSUVDNjE5NjYtMi4xAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABYWVogAAAAAAAA81EAAQAAAAEWzFhZWiAAAAAAAAAAAAAAAAAAAAAAWFlaIAAAAAAAAG+iAAA49QAA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" style="height:70px;width:115px;" />
                                 </div>
                              </div>
                           </div>
                           <div class="clearfix"></div>
                        </div>
                     </div>
                  </div>
               </div>
            </section>
         </div>
         <!-- /.content-wrapper -->
         <footer class="main-footer">
            <div class="pull-right hidden-xs">
               <b>Version</b> 1.0.1
            </div>
            <strong>Copyright © 2020-2021 <a>
            <span id="lblCompanyName1">EQFI NIDHI LIMITED</span></a>.</strong> All rights
            reserved.
         </footer>
         <div class="control-sidebar-bg"></div>
      </div>
      <script src="bower_components/jquery/dist/jquery.min.js"></script>
      <!-- Bootstrap 3.3.7 -->
      <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
      <!-- InputMask -->
      <script src="plugins/input-mask/jquery.inputmask.js"></script>
      <script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
      <script src="plugins/input-mask/jquery.inputmask.extensions.js"></script>
      <!-- date-range-picker -->
      <script src="bower_components/moment/min/moment.min.js"></script>
      <script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
      <!-- bootstrap datepicker -->
      <script src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
      <!-- bootstrap color picker -->
      <script src="bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
      <!-- bootstrap time picker -->
      <script src="plugins/timepicker/bootstrap-timepicker.min.js"></script>
      <!-- SlimScroll -->
      <script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
      <!-- iCheck 1.0.1 -->
      <script src="plugins/iCheck/icheck.min.js"></script>
      <!-- FastClick -->
      <script src="bower_components/fastclick/lib/fastclick.js"></script>
      <!-- AdminLTE App -->
      <script src="dist/js/adminlte.min.js"></script>
      <!-- AdminLTE for demo purposes -->
      <script src="dist/js/demo.js"></script>
      <!-- Select2 -->
      <script src="bower_components/select2/dist/js/select2.full.min.js"></script>
      <script>
         $(function () {
             //Initialize Select2 Elements
             $('.select2').select2();
             //Datemask dd/mm/yyyy
             $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
             //Datemask2 mm/dd/yyyy
             $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
             //Date range picker
             $('#reservation').daterangepicker()
             //Date range picker with time picker
             $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, locale: { format: 'MM/DD/YYYY hh:mm A' } })
             $('#daterange-btn').daterangepicker(
              {
                  ranges: {
                      'Today': [moment(), moment()],
                      'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                      'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                      'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                      'This Month': [moment().startOf('month'), moment().endOf('month')],
                      'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                  },
                  startDate: moment().subtract(29, 'days'),
                  endDate: moment()
              },
              function (start, end) {
                  $('#daterange-btn span').html(start.format('DD/MM/YYYY') + ' - ' + end.format('DD/MM/YYYY'))
              }
            )
             //Date picker
             $('#datepicker').datepicker({
                 autoclose: true
             })
             //Money Euro
             $('[data-mask]').inputmask()
         
             //iCheck for checkbox and radio inputs
             $('span[type="checkbox"].minimal').iCheck({
                 checkboxClass: 'icheckbox_minimal-blue',
                 radioClass: 'iradio_minimal-blue'
             })
         
         
         
         
         
         })
      </script>
   </form>
</body>
</html>