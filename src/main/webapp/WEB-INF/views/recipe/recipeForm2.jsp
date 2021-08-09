<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/common.jsp"%>
<link rel="stylesheet" href="${contextPath }/css/recipe/recipeForm.css">
<script defer src="${contextPath }/js/recipe/recipeForm.js"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레시피 작성 페이지</title>
</head>
<body>
	<div class="container">
		<div class="content">
			<form:form class="joinForm" action="${contextPath}/recipe/recipeSave"
				modelAttribute="recipeVO" method="post">
				<hr>
				<div>
					<div>
					<h2>레시피 등록</h2>
					</div>
					<hr>
					<div class="main Title">
		<!--  임시 방편으로 줌 나중에 로그인 하면 session에서 따올거임 -->
					<input type="hidden" name="member_user_id" value="user_001"></input>
					
						<input type="hidden" name="recipe_id" value="${recipe_id_seq }"></input>
						<div>
							<form:label path="recipe_name">레시피 제목</form:label>
						</div>
						<div>
							<form:input path="recipe_name" />
						</div>
						<div>
							<form:errors path="recipe_name" cssClass="errmsg"></form:errors>
						</div>
					</div>
					<br>
					<div class="main Contents">
						<div>
							<form:label path="recipe_contents">레시피 소개</form:label>
						</div>
						<div>
							<form:input path="recipe_contents" type="text" />
						</div>
						<div>
							<form:errors path="recipe_contents" cssClass="errmsg"></form:errors>
						</div>
					</div>
					<br>
					<div class="main Category">
						<div>
							<form:label path="recipe_category">카테고리</form:label>
						</div>
						<div>
							<form:select path="recipe_category">
								<option value="">선택</option>
								<form:options path="recipe_category" 
											  items="${kind }"
											  itemValue="code_id" 
											  itemLabel="name" />
							</form:select>
						</div>

						<div>
							<form:label path="recipe_what_situation">상황별</form:label>
						</div>
						<div>
							<form:select path="recipe_what_situation">
								<option value="">선택</option>
								<form:options path="recipe_what_situation" items="${situation }"
									itemValue="code_id" itemLabel="name" />
							</form:select>
						</div>
						<br>
						<div>
							<form:label path="recipe_method">방법별</form:label>
						</div>
						<div>
							<form:select path="recipe_method">
								<option value="">선택</option>
								<form:options path="recipe_method" items="${way }"
									itemValue="code_id" itemLabel="name" />
							</form:select>
						</div>
						<br>
						<div>
							<form:label path="recipe_material">재료별</form:label>
						</div>
						<div>
							<form:select path="recipe_material">
								<option value="">선택</option>
								<form:options path="recipe_material" items="${material }"
									itemValue="code_id" itemLabel="name" />
							</form:select>
						</div>
					</div>
					<br>
					<div class="main Imfomation">
						<div>요리정보</div>
						<div>
							<form:label path="recipe_how_many">인원</form:label>
						</div>
						<div>
							<form:select path="recipe_how_many">
								<option value="">선택</option>
								<form:options path="recipe_how_many" items="${people }"
									itemValue="code_id" itemLabel="name" />
							</form:select>
						</div>
						<div>
							<form:label path="recipe_how_long">시간</form:label>
						</div>
						<div>
							<form:select path="recipe_how_long">
								<option value="">선택</option>
								<form:options path="recipe_how_long" items="${time }"
									itemValue="code_id" itemLabel="name" />
							</form:select>
						</div>
						<div>
							<form:label path="recipe_difficulty">난이도</form:label>
						</div>
						<div>
							<form:select path="recipe_difficulty">
								<option value="">선택</option>
								<form:options path="recipe_difficulty" items="${difficulty }"
									itemValue="code_id" itemLabel="name" />
							</form:select>
						</div>
					</div>
					<hr>
			<!-- 재료 추가 -->
					<h3>재료 추가</h3>
					<hr>
					<div class="main material" id="main_material">
						<div class="main materialLab" id = "materialLab_0">
							<a href="#">😀</a>
							<div><label for="material_title"></label></div>
							<div><input name="listMaterialVO[0].material_title"	
										id="material_title[0]" 
										type="text" 
										placeholder="재료 이름을 적어주세요"/></div>
							<div><label for="material_contents"></label></div>
							<div><input name="listMaterialVO[0].material_contents" 
										id="material_contents[0]" 
										type="text" 
										placeholder="재료의 수량을 적어주세요"/></div>
										<div><a href="#" id="deleteBtn[0]" class="deleteBtn">🗑 </a></div>
										<div><input type="hidden" name="listMaterialVO[0].recipe_recipe_id" value="${recipe_id_seq }"></input></div>
						</div>			
					</div>
					<div id="materialPlus"></div>
					<br>
					<div><button id="materialBtn" type="button">재료 추가 버튼</button></div>
					<hr>
					<h3>순서 추가</h3>
					<hr>
			<!-- 순서 추가 -->
			
					<div class="main step" id="main_step">
						<div><label for="step_contents">🌜</label></div>
						<div><input name="listStepVO[0].step_contents" 
									id="step_contents[0]" 
									type="text" /></div>
						<div><label for="step_picture">📷</label></div>
						<div><input name="listStepVO[0].step_picture" 
									id="step_picture[0]"	
									type="file"	/></div>
						
						<div><input type="hidden" name="listStepVO[0].recipe_recipe_id" id="common_id" value="${recipe_id_seq }"></input></div>
					</div>
					<div id="stepPlus"></div>
					<br>
					<div><button id="stepBtn" type="button">순서 추가 버튼</button></div>
					<hr>
			<!-- 태그 입력-->
					<div>
						<input type="text" name="recipe_tag"
							placeholder="#야식#반찬#야찬 - 형식으로 입력해주세요~"></input>
					</div>
					<br>
			<!-- 제출 버튼 -->
					<div class="main button">
						<button id="submitBtn">임시 저장</button>
						<button>배포하기</button>
						<button>취소</button>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>