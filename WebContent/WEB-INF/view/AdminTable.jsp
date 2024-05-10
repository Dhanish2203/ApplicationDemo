<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ASSET TABLE PAGE...</title>
<link rel="stylesheet" href="form correction.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
</head>
<style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'poppins' sans-serif; 
}

.containerr{
    width: 100%;
    height: 100vh;
    background-image: url(images/background.jpg);
    background-position: center;
    background-size: cover;
    padding: 0.7%;
    color: #fff;
}
#cenbox{
    margin-left: 500px;
    margin-top: 20px;
    margin-bottom: 130px;
    margin-right: 40px;
    backdrop-filter: blur(40px);
    width: 300px;
    height: 200px;
}
#loghead{
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    color: black;
    text-align: center;
    padding-left: 95px;

}
#loghead{
    padding-right: 90px;
    font-size: 25px;
    white-space: nowrap;
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    padding-left: 30px;
}
#subbut{
    padding-left: 10px;
    width: 70px;
    margin-left: 200px;
    margin-top: 10px;
}
#userbut{
    padding-left: 10px;
    width: 100px;
    margin-left: 90px;
    margin-top: 10px;
}
.link{
    margin-left: 10px;
    margin-top: -35px;
    text-align: center;
}
.email{
    padding-left: 10px;
    width: 70px;
    margin-left: 200px;
    margin-top: 10px;
}
#navbar{
    position:sticky;
    top: 0%;
    z-index: 10;
}
.navbar-brand img{
    height: 40px;
    padding-left: 10px;
   
}
.navbar-nav li{
    padding: 0 10px;
}
.navbar-nav li a{
    color: rgb(250, 247, 247) !important;
    font-weight: 700;
}
.navbar-toggler-icon{
    color:white !important;
    font-size: x-small;
}
.navbar-toggler{
    outline: none !important;
}
.navbar-toggler-icon {
    background-color:white;
    border: 2px solid white;
  border-radius: 4px;
  }
  .content{
    margin-left: 10px;
    margin-top: 180px;
    text-align: center;
  }
    
     .title-word{
      animation: color-animation 4s linear infinite;
    }
    
    .title-word-1 {
      --color-1: #DF8453;
      --color-2: #3D8DAE;
      --color-3: #d45351;
    }
    
    .title-word-2 {
      --color-1: #d39c24;
      --color-2: #10645a;
      --color-3: #17494D;
    }
    
    .title-word-3 {
      --color-1: #207268;
      --color-2: #882a28;
      --color-3: #1d8377;
    }
    
    .title-word-4 {
      --color-1: #20617c;
      --color-2: #bb683b;
      --color-3: #923432;
    }
    
    @keyframes color-animation {
      0%    {color: var(--color-1)}
      32%   {color: var(--color-1)}
      33%   {color: var(--color-2)}
      65%   {color: var(--color-2)}
      66%   {color: var(--color-3)}
      99%   {color: var(--color-3)}
      100%  {color: var(--color-1)}
    }
    
    /* Here are just some visual styles. 🖌 */
    
    .container{
      display: grid;
      place-items: center;  
      text-align: center;
      height: 100vh
    }
    
    .title {
      font-family: "Montserrat", sans-serif;
      font-weight: 800;
      font-size: 3vw;
      text-transform: uppercase;
    }
  
  .container1{
    width: 100%;
    height: 100vh;
    background-image: url(images/hand.jpg);
    background-position: center;
    background-size: cover;
    padding: 0.7%;
    color: #fff;
  }
  #contact{
    padding-left: 1000px;
    padding-top: 100px;
    font-weight: bolder;
    color: blue;
}

/* admin */
.btn{
  color: #e42145;
  text-decoration: none;
  border: 1px solid #1d0808;
  padding: 10px 40px;
  border-radius: 20px;
  margin-right: 500px;
  margin-bottom: 20px;
}
#btn{
  width: 200px;
  padding: 15px 0;
  text-align: center;
  margin: 20px 100px;
  border-radius: 25px;
  font-weight: bold;
  border: 2px solid #6a301f;
  background: transparent;
  color: #c61f1f;
  cursor: pointer;
  position: relative;
  overflow: hidden;
}
#tab1{
  margin-bottom: 50px;
  width: 700px;
  margin-left: 350px;
}
#nav1{
  margin-bottom: 10px;
  margin-left: 340px;
}


/* add doctor */
.container2{
   width: 100%;
    height: 100vh;
    background-image: url(images/background.jpg);
    background-position: center;
    background-size: cover;
    padding: 0.7%;
    color: #fff;
}
.boxx{
  width: 500px;
  margin-left: 500px;
  backdrop-filter: blur(40px);
}

</style>
<script>
        function myFunction() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("tab1"); // Corrected table ID
            tr = table.getElementsByTagName("tr");

            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[0]; // Assuming Staff ID is in the first column (change index if needed)
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.trim() === filter.trim()) { // Use strict equality for exact matching
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }
        }
    </script>


</head>
<body>
<div class="containerr">
		<p id="hosname"
			style="color: black; font-size: 100px; font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-weight: bolder; text-align: center;"></p>
		<center>
			<h1 style="color: black;">ASSET MANAGEMENT</h1>
		</center>
		<br>
		<br>
		<div class="row" id="nav1">
			<nav class="navbar navbar-expand-lg navbar-light"
				style="background-color: #163043; width: 700px;">
				<div cssClass="container-fluid">
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div cssClass="collapse navbar-collapse"
						id="navbarSupportedContent">
						<div cssClass="navbar-nav me-auto mb-2 mb-lg-0">
               
                
                <a class="btn btn-primary" href="registerss" role="button">Add</a>
                <button class="btn btn-primary" type="submit" ><a href="homepage" style="text-decoration: none; color: aliceblue;">Home</a></button>
            </div>
						<div>
							<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for ID...">
		</div>
					</div>
				</div>
			</nav>
		</div>
		<div class="row">
			<table class="table" id="tab1">
				<thead>
					<tr>
						<th scope="col">AssetID</th>
						<th scope="col">ProductName</th>
						<th scope="col">ModelNumber</th>
						<th scope="col">DateofPurchase</th>
						<th scope="col">price</th>
						<th scope="col">Status</th>
						<th scope="col">AssignedTo</th>
						<th scope="col">IsActive</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="ads" items="${listAsset}" varStatus="status">
						<tr>
							<td>&emsp;&emsp;&emsp;${ads.assetid}&emsp;&emsp;&emsp;&emsp;</td>
							<td>&emsp;&emsp;&emsp;${ads.productname}&emsp;&emsp;</td>
							<td>&emsp;&emsp;&emsp;${ads.modelnumber}&emsp;&emsp;</td>
							<td>&emsp;&emsp;&emsp;${ads.dateofpurchase}&emsp;&emsp;</td>
							<td>&emsp;&emsp;&emsp;${ads.price}&emsp;&emsp;</td>
							<td>&emsp;&emsp;&emsp;${ads.status}&emsp;&emsp;</td>
							<td>&emsp;&emsp;&emsp;${ads.assignedto}&emsp;&emsp;</td>
							<td>&emsp;&emsp;&emsp;${ads.isactive}&emsp;&emsp;</td>

							<td><a class="btn btn-primary" href="update/<c:out value='${ads.assetid}'/>" role="button">Edit</a>
								<br>

								<a class="btn btn-primary" href="delete/<c:out value='${ads.assetid}'/>" role="button">Delete</a>
							</td>
						</tr>
					</c:forEach>


				</tbody>
			</table>
      <script>
        document.getElementById('searchInput').addEventListener('keyup', function() {
          searchTable();
        });
    
        function searchTable() {
          let input, filter, table, tr, td, i, j, txtValue;
          input = document.getElementById('searchInput');
          filter = input.value.toUpperCase();
          table = document.getElementById('tab1');
          tr = table.getElementsByTagName('tr');
    
          for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName('td');
            for (j = 0; j < td.length; j++) {
              txtValue = td[j].textContent || td[j].innerText;
              if (txtValue.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = '';
                break;
              } else {
                tr[i].style.display = 'none';
              }
            }
          }
        }
      </script>
    </div>
    </div>

</body>
</html>