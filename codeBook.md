Variables the measurements refer to either a period of time or frequency, mean or standard deviation. 

The Subject is a number: 1-30 referring to participating individuals.

The Activity is one of the following:
1. LAYING
2. SITTING
3.STANDING
4. WALKING
5. WALKING_DOWNSTAIRS
6. WALKING_UPSTAIRS

The measurements are finally 
df - full data (subject+ X +Y train and test)
file_labs - variabels labels
file_activity_labs value labels Y
labs_var_select  -  list from code select variabels
df_fin - averaged and grouped by Subject and Activity

Summary df

<table>
<thead><tr><th scope=col>row.names</th><th scope=col>X</th><th scope=col>X.1</th><th scope=col>X.2</th><th scope=col>X.3</th><th scope=col>X.4</th><th scope=col>X.5</th></tr></thead>
<tbody>
	<tr><td>   subject        </td><td>Min.   : 1.00     </td><td>1st Qu.: 9.00     </td><td>Median :17.00     </td><td>Mean   :16.15     </td><td>3rd Qu.:24.00     </td><td>Max.   :30.00     </td></tr>
	<tr><td>   activity       </td><td>Min.   :1.000     </td><td>1st Qu.:2.000     </td><td>Median :4.000     </td><td>Mean   :3.625     </td><td>3rd Qu.:5.000     </td><td>Max.   :6.000     </td></tr>
	<tr><td>tBodyAccmeanX     </td><td>Min.   :-1.0000   </td><td>1st Qu.: 0.2626   </td><td>Median : 0.2772   </td><td>Mean   : 0.2743   </td><td>3rd Qu.: 0.2884   </td><td>Max.   : 1.0000   </td></tr>
	<tr><td>tBodyAccmeanY     </td><td>Min.   :-1.00000  </td><td>1st Qu.:-0.02490  </td><td>Median :-0.01716  </td><td>Mean   :-0.01774  </td><td>3rd Qu.:-0.01062  </td><td>Max.   : 1.00000  </td></tr>
	<tr><td>tBodyAccmeanZ     </td><td>Min.   :-1.00000  </td><td>1st Qu.:-0.12102  </td><td>Median :-0.10860  </td><td>Mean   :-0.10892  </td><td>3rd Qu.:-0.09759  </td><td>Max.   : 1.00000  </td></tr>
	<tr><td> tBodyAccstdX     </td><td>Min.   :-1.0000   </td><td>1st Qu.:-0.9924   </td><td>Median :-0.9430   </td><td>Mean   :-0.6078   </td><td>3rd Qu.:-0.2503   </td><td>Max.   : 1.0000   </td></tr>
	<tr><td> tBodyAccstdY     </td><td>Min.   :-1.00000  </td><td>1st Qu.:-0.97699  </td><td>Median :-0.83503  </td><td>Mean   :-0.51019  </td><td>3rd Qu.:-0.05734  </td><td>Max.   : 1.00000  </td></tr>
	<tr><td> tBodyAccstdZ     </td><td>Min.   :-1.0000   </td><td>1st Qu.:-0.9791   </td><td>Median :-0.8508   </td><td>Mean   :-0.6131   </td><td>3rd Qu.:-0.2787   </td><td>Max.   : 1.0000   </td></tr>
	<tr><td> tBodyAccmadX     </td><td>Min.   :-1.0000   </td><td>1st Qu.:-0.9933   </td><td>Median :-0.9482   </td><td>Mean   :-0.6336   </td><td>3rd Qu.:-0.3020   </td><td>Max.   : 1.0000   </td></tr>
	<tr><td> tBodyAccmadY     </td><td>Min.   :-1.0000   </td><td>1st Qu.:-0.9770   </td><td>Median :-0.8437   </td><td>Mean   :-0.5257   </td><td>3rd Qu.:-0.0874   </td><td>Max.   : 1.0000   </td></tr>
	<tr><td> tBodyAccmadZ     </td><td>Min.   :-1.0000   </td><td>1st Qu.:-0.9791   </td><td>Median :-0.8451   </td><td>Mean   :-0.6150   </td><td>3rd Qu.:-0.2881   </td><td>Max.   : 1.0000   </td></tr>
	<tr><td> tBodyAccmaxX     </td><td>Min.   :-1.00000  </td><td>1st Qu.:-0.93579  </td><td>Median :-0.87482  </td><td>Mean   :-0.46673  </td><td>3rd Qu.:-0.01464  </td><td>Max.   : 1.00000  </td></tr>
	<tr><td> tBodyAccmaxY     </td><td>Min.   :-1.00000  </td><td>1st Qu.:-0.56257  </td><td>Median :-0.46821  </td><td>Mean   :-0.30518  </td><td>3rd Qu.:-0.06734  </td><td>Max.   : 1.00000  </td></tr>
	<tr><td> tBodyAccmaxZ     </td><td>Min.   :-1.0000   </td><td>1st Qu.:-0.8122   </td><td>Median :-0.7245   </td><td>Mean   :-0.5622   </td><td>3rd Qu.:-0.3456   </td><td>Max.   : 1.0000   </td></tr>
	<tr><td> tBodyAccminX     </td><td>Min.   :-1.0000   </td><td>1st Qu.: 0.2125   </td><td>Median : 0.7842   </td><td>Mean   : 0.5253   </td><td>3rd Qu.: 0.8438   </td><td>Max.   : 1.0000   </td></tr>
	<tr><td> tBodyAccminY     </td><td>Min.   :-1.0000   </td><td>1st Qu.: 0.1139   </td><td>Median : 0.6198   </td><td>Mean   : 0.3895   </td><td>3rd Qu.: 0.6852   </td><td>Max.   : 1.0000   </td></tr>
	<tr><td> tBodyAccminZ     </td><td>Min.   :-1.0000   </td><td>1st Qu.: 0.3927   </td><td>Median : 0.7722   </td><td>Mean   : 0.5980   </td><td>3rd Qu.: 0.8367   </td><td>Max.   : 1.0000   </td></tr>
	<tr><td> tBodyAccsma      </td><td>Min.   :-1.0000   </td><td>1st Qu.:-0.9817   </td><td>Median :-0.8769   </td><td>Mean   :-0.5521   </td><td>3rd Qu.:-0.1228   </td><td>Max.   : 1.0000   </td></tr>
	<tr><td>tBodyAccenergyX   </td><td>Min.   :-1.0000   </td><td>1st Qu.:-0.9999   </td><td>Median :-0.9977   </td><td>Mean   :-0.8255   </td><td>3rd Qu.:-0.7157   </td><td>Max.   : 1.0000   </td></tr>
	<tr><td>tBodyAccenergyY   </td><td>Min.   :-1.0000   </td><td>1st Qu.:-0.9998   </td><td>Median :-0.9929   </td><td>Mean   :-0.9027   </td><td>3rd Qu.:-0.8251   </td><td>Max.   : 1.0000   </td></tr>
	<tr><td>tBodyAccenergyZ   </td><td>Min.   :-1.0000   </td><td>1st Qu.:-0.9994   </td><td>Median :-0.9842   </td><td>Mean   :-0.8547   </td><td>3rd Qu.:-0.7595   </td><td>Max.   : 1.0000   </td></tr>
	<tr><td> tBodyAcciqrX     </td><td>Min.   :-1.0000   </td><td>1st Qu.:-0.9942   </td><td>Median :-0.9560   </td><td>Mean   :-0.6892   </td><td>3rd Qu.:-0.4079   </td><td>Max.   : 1.0000   </td></tr>
	<tr><td> tBodyAcciqrY     </td><td>Min.   :-1.0000   </td><td>1st Qu.:-0.9813   </td><td>Median :-0.8849   </td><td>Mean   :-0.6435   </td><td>3rd Qu.:-0.3247   </td><td>Max.   : 1.0000   </td></tr>
	<tr><td> tBodyAcciqrZ     </td><td>Min.   :-1.0000   </td><td>1st Qu.:-0.9785   </td><td>Median :-0.8538   </td><td>Mean   :-0.6407   </td><td>3rd Qu.:-0.3364   </td><td>Max.   : 1.0000   </td></tr>
	<tr><td>tBodyAccentropyX  </td><td>Min.   :-1.00000  </td><td>1st Qu.:-0.56383  </td><td>Median :-0.05712  </td><td>Mean   :-0.10033  </td><td>3rd Qu.: 0.32959  </td><td>Max.   : 1.00000  </td></tr>
	<tr><td>tBodyAccentropyY  </td><td>Min.   :-1.0000   </td><td>1st Qu.:-0.5496   </td><td>Median :-0.1017   </td><td>Mean   :-0.1288   </td><td>3rd Qu.: 0.2831   </td><td>Max.   : 1.0000   </td></tr>
	<tr><td>tBodyAccentropyZ  </td><td>Min.   :-1.0000   </td><td>1st Qu.:-0.4968   </td><td>Median :-0.1364   </td><td>Mean   :-0.1579   </td><td>3rd Qu.: 0.1674   </td><td>Max.   : 1.0000   </td></tr>
	<tr><td>tBodyAccarCoeffX,1</td><td>Min.   :-1.0000   </td><td>1st Qu.:-0.3686   </td><td>Median :-0.1362   </td><td>Mean   :-0.1190   </td><td>3rd Qu.: 0.1332   </td><td>Max.   : 1.0000   </td></tr>
	<tr><td>tBodyAccarCoeffX,2</td><td>Min.   :-1.00000  </td><td>1st Qu.:-0.07902  </td><td>Median : 0.07753  </td><td>Mean   : 0.10857  </td><td>3rd Qu.: 0.28607  </td><td>Max.   : 1.00000  </td></tr>
	<tr><td>tBodyAccarCoeffX,3</td><td>Min.   :-1.00000  </td><td>1st Qu.:-0.18995  </td><td>Median :-0.01764  </td><td>Mean   :-0.03570  </td><td>3rd Qu.: 0.13332  </td><td>Max.   : 1.00000  </td></tr>
	<tr><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td></tr>
	<tr><td>fBodyBodyGyroMagmin               </td><td>Min.   :-1.0000                   </td><td>1st Qu.:-0.9938                   </td><td>Median :-0.9592                   </td><td>Mean   :-0.8887                   </td><td>3rd Qu.:-0.8399                   </td><td>Max.   : 1.0000                   </td></tr>
	<tr><td>fBodyBodyGyroMagsma               </td><td>Min.   :-1.0000                   </td><td>1st Qu.:-0.9825                   </td><td>Median :-0.8756                   </td><td>Mean   :-0.6974                   </td><td>3rd Qu.:-0.4514                   </td><td>Max.   : 1.0000                   </td></tr>
	<tr><td>fBodyBodyGyroMagenergy            </td><td>Min.   :-1.0000                   </td><td>1st Qu.:-0.9997                   </td><td>Median :-0.9843                   </td><td>Mean   :-0.8813                   </td><td>3rd Qu.:-0.8149                   </td><td>Max.   : 1.0000                   </td></tr>
	<tr><td>fBodyBodyGyroMagiqr               </td><td>Min.   :-1.0000                   </td><td>1st Qu.:-0.9854                   </td><td>Median :-0.9126                   </td><td>Mean   :-0.7221                   </td><td>3rd Qu.:-0.4953                   </td><td>Max.   : 1.0000                   </td></tr>
	<tr><td>fBodyBodyGyroMagentropy           </td><td>Min.   :-1.00000                  </td><td>1st Qu.:-0.66500                  </td><td>Median :-0.15502                  </td><td>Mean   :-0.07628                  </td><td>3rd Qu.: 0.51391                  </td><td>Max.   : 1.00000                  </td></tr>
	<tr><td>fBodyBodyGyroMagmaxInds           </td><td>Min.   :-1.0000                   </td><td>1st Qu.:-1.0000                   </td><td>Median :-0.9487                   </td><td>Mean   :-0.8870                   </td><td>3rd Qu.:-0.8462                   </td><td>Max.   : 1.0000                   </td></tr>
	<tr><td>fBodyBodyGyroMagmeanFreq          </td><td>Min.   :-1.00000                  </td><td>1st Qu.:-0.23436                  </td><td>Median :-0.05210                  </td><td>Mean   :-0.04156                  </td><td>3rd Qu.: 0.15158                  </td><td>Max.   : 1.00000                  </td></tr>
	<tr><td>fBodyBodyGyroMagskewness          </td><td>Min.   :-1.00000                  </td><td>1st Qu.:-0.49959                  </td><td>Median :-0.31771                  </td><td>Mean   :-0.26428                  </td><td>3rd Qu.:-0.08497                  </td><td>Max.   : 1.00000                  </td></tr>
	<tr><td>fBodyBodyGyroMagkurtosis          </td><td>Min.   :-1.0000                   </td><td>1st Qu.:-0.8077                   </td><td>Median :-0.6649                   </td><td>Mean   :-0.5759                   </td><td>3rd Qu.:-0.4393                   </td><td>Max.   : 1.0000                   </td></tr>
	<tr><td>fBodyBodyGyroJerkMagmean          </td><td>Min.   :-1.0000                   </td><td>1st Qu.:-0.9921                   </td><td>Median :-0.9453                   </td><td>Mean   :-0.7798                   </td><td>3rd Qu.:-0.6122                   </td><td>Max.   : 1.0000                   </td></tr>
	<tr><td>fBodyBodyGyroJerkMagstd           </td><td>Min.   :-1.0000                   </td><td>1st Qu.:-0.9926                   </td><td>Median :-0.9382                   </td><td>Mean   :-0.7922                   </td><td>3rd Qu.:-0.6437                   </td><td>Max.   : 1.0000                   </td></tr>
	<tr><td>fBodyBodyGyroJerkMagmad           </td><td>Min.   :-1.0000                   </td><td>1st Qu.:-0.9917                   </td><td>Median :-0.9351                   </td><td>Mean   :-0.7734                   </td><td>3rd Qu.:-0.6098                   </td><td>Max.   : 1.0000                   </td></tr>
	<tr><td>fBodyBodyGyroJerkMagmax           </td><td>Min.   :-1.0000                   </td><td>1st Qu.:-0.9935                   </td><td>Median :-0.9434                   </td><td>Mean   :-0.8099                   </td><td>3rd Qu.:-0.6849                   </td><td>Max.   : 1.0000                   </td></tr>
	<tr><td>fBodyBodyGyroJerkMagmin           </td><td>Min.   :-1.0000                   </td><td>1st Qu.:-0.9937                   </td><td>Median :-0.9727                   </td><td>Mean   :-0.8712                   </td><td>3rd Qu.:-0.8058                   </td><td>Max.   : 1.0000                   </td></tr>
	<tr><td>fBodyBodyGyroJerkMagsma           </td><td>Min.   :-1.0000                   </td><td>1st Qu.:-0.9921                   </td><td>Median :-0.9453                   </td><td>Mean   :-0.7798                   </td><td>3rd Qu.:-0.6122                   </td><td>Max.   : 1.0000                   </td></tr>
	<tr><td>fBodyBodyGyroJerkMagenergy        </td><td>Min.   :-1.0000                   </td><td>1st Qu.:-0.9999                   </td><td>Median :-0.9980                   </td><td>Mean   :-0.9379                   </td><td>3rd Qu.:-0.9227                   </td><td>Max.   : 1.0000                   </td></tr>
	<tr><td>fBodyBodyGyroJerkMagiqr           </td><td>Min.   :-1.0000                   </td><td>1st Qu.:-0.9912                   </td><td>Median :-0.9419                   </td><td>Mean   :-0.7727                   </td><td>3rd Qu.:-0.6047                   </td><td>Max.   : 1.0000                   </td></tr>
	<tr><td>fBodyBodyGyroJerkMagentropy       </td><td>Min.   :-1.0000                   </td><td>1st Qu.:-0.9235                   </td><td>Median :-0.4145                   </td><td>Mean   :-0.2743                   </td><td>3rd Qu.: 0.3372                   </td><td>Max.   : 1.0000                   </td></tr>
	<tr><td>fBodyBodyGyroJerkMagmaxInds       </td><td>Min.   :-1.0000                   </td><td>1st Qu.:-0.9683                   </td><td>Median :-0.9048                   </td><td>Mean   :-0.9000                   </td><td>3rd Qu.:-0.8730                   </td><td>Max.   : 1.0000                   </td></tr>
	<tr><td>fBodyBodyGyroJerkMagmeanFreq      </td><td>Min.   :-1.00000                  </td><td>1st Qu.:-0.01948                  </td><td>Median : 0.13625                  </td><td>Mean   : 0.12671                  </td><td>3rd Qu.: 0.28896                  </td><td>Max.   : 1.00000                  </td></tr>
	<tr><td>fBodyBodyGyroJerkMagskewness      </td><td>Min.   :-1.0000                   </td><td>1st Qu.:-0.5362                   </td><td>Median :-0.3352                   </td><td>Mean   :-0.2986                   </td><td>3rd Qu.:-0.1132                   </td><td>Max.   : 1.0000                   </td></tr>
	<tr><td>fBodyBodyGyroJerkMagkurtosis      </td><td>Min.   :-1.0000                   </td><td>1st Qu.:-0.8418                   </td><td>Median :-0.7034                   </td><td>Mean   :-0.6177                   </td><td>3rd Qu.:-0.4880                   </td><td>Max.   : 1.0000                   </td></tr>
	<tr><td>angletBodyAccMean,gravity         </td><td>Min.   :-1.000000                 </td><td>1st Qu.:-0.124694                 </td><td>Median : 0.008146                 </td><td>Mean   : 0.007705                 </td><td>3rd Qu.: 0.149005                 </td><td>Max.   : 1.000000                 </td></tr>
	<tr><td>angletBodyAccJerkMean,gravityMean </td><td>Min.   :-1.000000                 </td><td>1st Qu.:-0.287031                 </td><td>Median : 0.007668                 </td><td>Mean   : 0.002648                 </td><td>3rd Qu.: 0.291490                 </td><td>Max.   : 1.000000                 </td></tr>
	<tr><td>angletBodyGyroMean,gravityMean    </td><td>Min.   :-1.00000                  </td><td>1st Qu.:-0.49311                  </td><td>Median : 0.01719                  </td><td>Mean   : 0.01768                  </td><td>3rd Qu.: 0.53614                  </td><td>Max.   : 1.00000                  </td></tr>
	<tr><td>angletBodyGyroJerkMean,gravityMean</td><td>Min.   :-1.000000                 </td><td>1st Qu.:-0.389041                 </td><td>Median :-0.007186                 </td><td>Mean   :-0.009219                 </td><td>3rd Qu.: 0.365996                 </td><td>Max.   : 1.000000                 </td></tr>
	<tr><td>angleX,gravityMean                </td><td>Min.   :-1.0000                   </td><td>1st Qu.:-0.8173                   </td><td>Median :-0.7156                   </td><td>Mean   :-0.4965                   </td><td>3rd Qu.:-0.5215                   </td><td>Max.   : 1.0000                   </td></tr>
	<tr><td>angleY,gravityMean                </td><td>Min.   :-1.000000                 </td><td>1st Qu.: 0.002151                 </td><td>Median : 0.182029                 </td><td>Mean   : 0.063255                 </td><td>3rd Qu.: 0.250790                 </td><td>Max.   : 1.000000                 </td></tr>
	<tr><td>angleZ,gravityMean                </td><td>Min.   :-1.000000                 </td><td>1st Qu.:-0.131880                 </td><td>Median :-0.003882                 </td><td>Mean   :-0.054284                 </td><td>3rd Qu.: 0.102970                 </td><td>Max.   : 1.000000                 </td></tr>
	<tr><td>  type data                       </td><td>Min.   :1.000                     </td><td>1st Qu.:1.000                     </td><td>Median :1.000                     </td><td>Mean   :1.286                     </td><td>3rd Qu.:2.000                     </td><td>Max.   :2.000                     </td></tr>
</tbody>
</table>

