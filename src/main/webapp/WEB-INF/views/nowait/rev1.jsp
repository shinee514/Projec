<!DOCTYPE html>
<html>
    <head>
        <title>예약페이지</title>
    </head>
    <body>
        <h3>RSERVATION</h3>
        <form action="" method="post">
            <fieldset>
                <legend>예약자 정보</legend>
                <label for="sub">예약자:</label>
                <input type="text" name="person" id="sub"/><br>
                <label for="phone">휴대폰:</label>
                <input type="tel" name="tell" id="phone" placeholder="01*-000*-0000" pattern="(01[0-9]{1}-[0-9]{3,4}-[0-9]{4}"/><br>
                예약인원:
                <select name="person" id="person_cnt" size="1">
                    <option value="">2명</option>
                    <option value="">3명</option>
                    <option value="">4명</option>
                    <option value="">5명</option>
                    <option value="">6명</option>
                    <option value="">기타..</option>
                </select>
            </fieldset>
            
            <fieldset>
                <legend>일자 및 시간 선택</legend>
                <input type="date" name="reservation_date">
                <input type="time" name="reservation_time"><br>
                <label for="position">위치:</label>
                <input type="radio" name="site" value="yes"/>본관
                <input type="radio" name="site" value="yes"/>별관<br>

                <label for="choice">옵션:</label>
                <input type="radio" name="op" id="choice" value="sep_room"/>단독룸
                <input type="radio" name="op" id="choice" value="baby_chair"/>아기의자
                <input type="radio" name="op" id="choice" value="veg_cuisine"/>채식요리
            </fieldset>
            <br>
            <input type="submit" value="예약">
            <input type="reset" value="취소">
        </form>

    </body>
</html>