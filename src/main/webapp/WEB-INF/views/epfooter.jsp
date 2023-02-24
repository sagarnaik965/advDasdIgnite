<div id="footer"> 


<div class="">
		
		<div class="row footer" style="padding-top: 5px;padding-bottom: 25px;">
			<div class="col-md-3" id="footerAlign" style="height: 8px;">
					<img class="img-rounded" id="" src="resources/images/cdac.png"  style="height: 60px;width: 50px;"/>

			</div>
		
			<div id="footernavigation" class="col-md-7 text-center"  style="padding-top:12px;">

				<ul id="footerList" style="margin-bottom: 10px;"> 
					<li onclick="location.href='sitemap.html';" style="cursor: pointer;"><spring:message code="footer.sitemap"/></li>
					<li onclick="location.href='help.html';" style="cursor: pointer;"><spring:message code="footer.help"/></li>
					<li onclick="location.href='disclaimer.html';" style="cursor: pointer;"><spring:message code="footer.disclaimer"/></li>
					<li onclick="location.href='copyright.html';" style="cursor: pointer;"><spring:message code="footer.copyright"/></li>
					<li onclick="location.href='hyperlinking.html';" style="cursor: pointer;"><spring:message code="footer.hyperlink"/></li>
					<li onclick="location.href='privacy.html';" style="cursor: pointer;"><spring:message code="footer.privacy"/></li>
					<li onclick="location.href='terms.html';" style="cursor: pointer;"><spring:message code="footer.terms"/></li> 
					

					
					
				</ul>

			</div>
			
			
				<!-- Footer -->
			<div class="col-md-2 footerRight" style="padding-top:7px;" id="footerAlign">

				<ul class="list-inline" style="margin-bottom: 0px;" >
					<li style="padding-bottom: 0px;"><a href="https://www.facebook.com/ePramaan/"><img id="imageFB"  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"/></a></li>
					<li style="padding-bottom: 0px;"><a href="https://www.linkedin.com/in/epramaan-eauthentications-554454aa/"><img id="imageLn"  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"/></a></li>
					<li style="padding-bottom: 0px;"><a href="https://twitter.com/epramaan"><img id="imageTw"  src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"/></a></li>
				</ul>
				

			</div>
		
		</div>
		<div class="row footer">
			<hr style="margin-top: 0px; margin-bottom: 10px;"/>
			<div class="col-md-3 text-left" id="footerAlign">
			<spring:message code="footer.visitors"/>: <span id="visited">0</span> 
			</div>
			
			<div class="col-md-6 text-center" id="footerAlign">
			Copyright &copy; 2022 C-DAC Mumbai. All Rights Reserved.
				
			</div>
			<div class="col-md-3 text-right" id="footerAlign">
				<spring:message code="footer.pageupated"/>: 25/01/2023
			</div>
			
		</div>
		
		<div class="modal fade" id="imagemodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">              
		      <div class="modal-body">
		      	<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		        <img src="" class="imagepreview" style="width: 100%;" >
		      </div>
		    </div>
		  </div>
		</div>
		
		
		<div class="modal fade" id="videoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		    <div class="modal-dialog">
		      <div class="modal-content">
		        <div class="modal-body">
		          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		          <iframe width="100%" height="350" src="" frameborder="0" allowfullscreen></iframe>
		        </div>
		      </div>
    </div>
  </div>
		
	</div>
	</div>
	</div>

    

<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script> -->
<!-- <script src="resources/js/jquery.min.js"></script> -->
<script	src="<c:url value='/resources/js/jquery-3.5.1.min.js'/>"></script>
<script src="resources/js/jquery.bootstrap.newsbox.min.js" type="text/javascript"></script>

		    
	

 <!-- <script type="text/javascript" src="//cdn.jsdelivr.net/jquery.lazy/1.7.4/jquery.lazy.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/canvasjs/1.7.0/jquery.canvasjs.min.js"></script> -->

 <script type="text/javascript" src="resources/js/jquery.lazy.min.js"></script>
 <script src="resources/js/bootstrap.min.js"></script> 
 <script src="resources/js/jquery.canvasjs.min.js"></script>
 <!-- <script src="resources/js/jquery.min.js"></script> -->
 


<script type="text/javascript">

<!-- Code for Image Pop Up-->
    $(function () {
    	
    	$(".video").click(function () {
            var theModal = $(this).data("target"),
            videoSRC = $(this).attr("data-video"),
            videoSRCauto = videoSRC;
            $(theModal + ' iframe').attr('src', videoSRCauto);
            $(theModal + ' button.close').click(function () {
                $(theModal + ' iframe').attr('src', '');
            });
         });

    	$('.pop').on('click', function() {
    		$('.imagepreview').attr('src', $(this).find('img').attr('src'));
    		$('#imagemodal').modal('show');   
    	});
    	
         $("#demo3").bootstrapNews({
            newsPerPage: 4,
            autoplay: true,
            onToDo: function () {
                //console.log(this);
            }
        }); 
        
    	 
      
    });
</script>

 <script type="text/javascript">
 $(document).ready(function() {
	    $('.navbar a.dropdown-toggle').on('click', function(e) {
	        var $el = $(this);
	        var $parent = $(this).offsetParent(".dropdown-menu");
	        $(this).parent("li").toggleClass('open');

	        if(!$parent.parent().hasClass('nav')) {
	            $el.next().css({"top": $el[0].offsetTop, "left": $parent.outerWidth() - 4});
	        }

	        $('.nav li.open').not($(this).parents("li")).removeClass("open");

	        return false;
	    });
	    
	    initialize();
	});
	
 
 		var monthData = [];
 		
		function initialize() {
		    $('.lazy').Lazy();
		
		    var dps = [];
		    var months = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];
		     
		    
			if($('#chartContainer2').length && $('#chartContainer').length) {
			  
			  CanvasJS.addColorSet("customColor",
				                [//colorSet Array
				                "#3e76b9"
				                ]);
			  

			  $.ajax({
			    type: 'GET',
			    url: 'count',
			    dataType: 'json',
			    success: function(data) {
			    	var countData = data;
			    	data = data.aadhaarMonthlyCount;
			      	for (var i = 0; i < data.length; i++) {
			      		
				     var tempMonth = months[parseInt(data[i].monthlyAadhaarCount.yearMonth.substring(5, 7)) - 1];
			      	  
			      	  monthData.push({
			      		  num:tempMonth,
			      		  month:data[i].monthlyAadhaarCount.yearMonth
			      		  });
			      	  
			    	  dps.push({
			          label: tempMonth,
			          y: Number(data[i].monthlyAadhaarCount.transCount)
			        }); 
			      }

			    	$('#visited').text(countData.visited);  
					$('#asaauaDept').text(countData.asaauadept); 
					$('#asaauaTrans').text(countData.asaauatrans);
					
					$('#eprDept').text(countData.eprdept); 
					$('#eprTrans').text(countData.eprtrans);
					
					$('#totalDept').text(countData.totaldept); 
					$('#totalTrans').text(countData.totaltrans);

			      	
				    var chart = new CanvasJS.Chart("chartContainer2", {
				    theme : "theme2",//theme1
				    colorSet: "customColor",
					axisY:{
				        labelFontSize: 10
				      },
				      axisX:{
				          labelFontSize: 10
				        },
			        
			        data: [{
			          type: "column",
			          click : onClick,
			          dataPoints: dps
			        } ]
			      });

			      chart.render();
			      
			      
			      var chart1 = new CanvasJS.Chart("chartContainer", {
					theme : "theme2",//theme1
					colorSet: "customColor",
					axisY:{
				        labelFontSize: 10
				      },
				      axisX:{
				          labelFontSize: 10
				        },
					
					data : [ {
							type : "column",
							click : onClick,
							dataPoints : dps
						}]
					});

					chart1.render();

 
			    }
			  
			  });
			  			  
			} else {
				
				
				 $.ajax({
					    type: 'GET',
					    url: 'count',
					    dataType: 'json',
					    success: function(data) {
					    	$('#visited').text(data.visited); 
					    }
				 
				 });
				
			}
			
			}
		
		
		setInterval(initialize, 40000);
			 


		function onClick(e) {
			var month =  monthData[parseInt(e.dataPoint.x)].month;
			document.getElementById('monthData').value = month;
			document.getElementById("formmonth").submit();
			
		}

		
		$(document).ready(
				function() {

					$(document).delegate('*[data-toggle="lightbox"]', 'click',
							function(event) {
								event.preventDefault();
								$(this).ekkoLightbox();
					});
				});
		
			function refreshcaptcha() {
		       var image = document.getElementById("captchaImage");
		       image.setAttribute("src", "captcha.png?"+(new Date()).getTime());
		   }




		
			</script>
			
 </body>

</html>
 
