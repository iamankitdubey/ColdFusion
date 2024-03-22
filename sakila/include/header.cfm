<cfif NOT structKeyExists (session, 'name') >
  <cflocation addtoken="false" url="../login.cfm?message=session expire">
</cfif>
<cfoutput>
<cfparam name ="session.name" default="">

<div class ="div-header bg-info text-center">
    <h1>WELCOME #session.name#</h1>
</div>
<nav class="navbar navbar-expand-lg bg-body-tertiary d-flex justify-content-between">
    <div class="">
        <ul class="navbar-nav me-auto ms-3 mb-2 mb-lg-0 ">
          <li class="nav-item ms-3">
            <a class="nav-link active" aria-current="page" href="../dashboard.cfm">Home</a>
          </li>
          <li class="nav-item ms-3">
            <a class="nav-link" href="../actor/index.cfm">actor</a>
          </li>
          <li class="nav-item ms-3">
            <a class="nav-link" href="../address/index.cfm">address</a>
          </li>
          <li class="nav-item ms-3">
            <a class="nav-link" href="../category/index.cfm">category</a>
          </li>
          <li class="nav-item ms-3">
            <a class="nav-link" href="">city</a>
          </li>
          <li class="nav-item ms-3">
            <a class="nav-link" href="../country/index.cfm">country</a>
          </li>
          <li class="nav-item ms-3">
            <a class="nav-link" href="../customer/index.cfm">customer</a>
          </li>
          <li class="nav-item ms-3">
            <a class="nav-link" href="">film</a>
          </li>
          <li class="nav-item ms-3">
            <a class="nav-link" href="">film_actor</a>
          </li>
          <li class="nav-item ms-3">
            <a class="nav-link" href="">film_category</a>
          </li>
          <li class="nav-item ms-3">
            <a class="nav-link" href="">film_text</a> 
          </li>
          <!--- <li class="nav-item ms-3">
            <a href="../log-out.cfm" class="nav-link ms-5">LOG OUT</a>            
          </li>  --->
        </ul>
    </div> 
    <div>
      <a href="../log-out.cfm" class="nav-link me-4">LOG OUT</a>            
    </div>
  </nav>
</cfoutput>