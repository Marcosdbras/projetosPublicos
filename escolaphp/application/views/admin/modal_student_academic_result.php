<?php
						$student_info	=	$this->crud_model->get_student_info($current_student_id);
						foreach($student_info as $row1):
					?>
                	<center>
                   	<div style="font-size: 20px;font-weight: 100;margin: 10px;"><?php echo $row1['name'];?></div>
                    
                    <div class="accordion" id="accordion2">
                    
                    	<?php 
						/////SEMESTER WISE RESULT, RESULTSHEET FOR EACH SEMESTER SEPERATELY
						$toggle = true;
						$exams	=	$this->crud_model->get_exams();
						foreach($exams as $row0):
												
						$total_grade_point	=	0;
						$total_marks		=	0;
						$total_subjects		=	0;
						?>
                        <div class="accordion-group">
                        	<div class="accordion-heading">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse<?php echo $row0['exam_id'];?>">
                                  <i class="icon-rss icon-1x"></i> <?php echo $row0['name'];?>
                                </a>
                          	</div>
                            <div id="collapse<?php echo $row0['exam_id'];?>" class="accordion-body collapse <?php if($toggle){echo 'in';$toggle=false;}?>" >
                                <div class="accordion-inner">
                                <center>
                                  <table class="table table-striped " >
                                        <thead>
                                            <tr>
                                                <th>Assunto</th>
                                                <th>Pontos Obtidos</th>
                                                <th>Maior Ponto </th>
                                                <th>S&eacute;rie</th>
                                                <th>freq&uuml;&ecirc;ncia</th>
                                                <th>Coment&aacute;rio</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php 
                                            $subjects	=	$this->crud_model->get_subjects_by_class($row1['class_id']);
                                            foreach($subjects as $row2):
                                            $total_subjects++;
                                            ?>
                                            <tr>
                                                <td><?php echo $row2['name'];?></td>
                                                <td>
                                                    <?php
                                                    //obtained marks
                                                    $verify_data	=	array(	'exam_id' => $row0['exam_id'] ,
                                                                        'class_id' => $row1['class_id'] ,
                                                                        'subject_id' => $row2['subject_id'] , 
                                                                        'student_id' => $row1['student_id']);
                                                                        
                                                    $query = $this->db->get_where('mark' , $verify_data);							 
                                                    $marks	=	$query->result_array();
                                                    foreach($marks as $row3):
                                                        echo $row3['mark_obtained'];
                                                        $total_marks	+=	$row3['mark_obtained'];
                                                    endforeach;
                                                    ?>
                                                </td>
                                                <td>
                                                    <?php
                                                    //highest marks
                                                    $verify_data	=	array(	'exam_id' => $row0['exam_id'] ,
                                                                        'subject_id' => $row2['subject_id']);
                                                    $this->db->select_max('mark_obtained' , 'mark_highest');
                                                    $query = $this->db->get_where('mark' , $verify_data);							 
                                                    $marks	=	$query->result_array();
                                                    foreach($marks as $row4):echo $row4['mark_highest'];endforeach;
                                                    ?>
                                                </td>
                                                <td>
                                                    <?php 
                                                    $grade	=	$this->crud_model->get_grade($row3['mark_obtained']);
                                                    echo $grade['name'];
                                                    $total_grade_point	+=	$grade['grade_point'];
                                                    ?>
                                                </td>
                                                <td>
                                                    <?php echo $row3['attendance'];?>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <?php endforeach;?>
                                        </tbody>
                                    </table>
                                    <hr />
                                    Total pontos : <?php	echo $total_marks;?>
                                    <hr />
                                    MP(M&eacute;dia de Pontua&ccedil;&atilde;o) : <?php echo round($total_grade_point/$total_subjects , 2);?>
                                </center>
                                </div>
                          	</div>
                        </div>
                        <?php endforeach;?>
                      </div>
                    </center>
                    <?php endforeach;?>