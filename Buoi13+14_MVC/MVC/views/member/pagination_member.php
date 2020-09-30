					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<?php
							if(isset($_GET['pages']) && $_GET['pages']>1){
								?>
								<li class="page-item"><a class="page-link" href="index.php?pages=1"> <<< </a></li>
								<?php
							} 
							if(isset($_GET['pages']) && $_GET['pages']!="1"){
								?>
								<li class="page-item"><a class="page-link" href="index.php?pages=<?php
								echo $back=$_GET['pages']-1;

								?>">Back</a></li>
								<?php

							}
							for ($i = 1; $i <= $pagination; $i++) { 
								?>
								<li class="page-item"><a class="page-link" href="index.php?pages=<?php echo $i; ?>"><?php echo $i; ?></a></li>
								<?php
							}
							if(!isset($_GET['pages']) || $_GET['pages']!=$pagination){
								?>
								<li class="page-item"><a class="page-link" href="index.php?pages=<?php
								if(isset($_GET['pages'])){
									echo $next=$_GET['pages']+1;
									}else{
										echo "2";
									}
									?>">Next</a></li> 
									<?php
								}
							if(!isset($_GET['pages']) || $_GET['pages']<$pagination){
									?>
									<li class="page-item"><a class="page-link" href="index.php?pages=<?php echo $pagination; ?>"> >>> </a></li>
									<?php
								}							
								?>


							</ul>
						</nav>