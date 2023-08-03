import { Col, Container, Nav, NavDropdown, Row } from "react-bootstrap";
import { PersonCircle } from "react-bootstrap-icons";
import { useEffect, useRef, useState } from "react";

export function HeaderLogin() {
  const member_id = sessionStorage.getItem("MEMBER_ID");
  return (
    <div>
      {member_id === null ? (
        <Nav.Link
          href="/login"
          className="link-danger"
          style={{ fontSize: "15px", paddingTop: "13px" }}
        >
          로그인
        </Nav.Link>
      ) : (
        ""
      )}
    </div>
  );
}

export function HeaderLogout({ setM_image, setMember_id, setKakao_id }) {
  const member_id = sessionStorage.getItem("MEMBER_ID");

  // 로그아웃 버튼 클릭하면 session의 MEMBER_ID 제거
  function handleClickLogout(e) {
    const confirmLogout = window.confirm("로그아웃 하시겠습니까?");
    if (confirmLogout) {
      sessionStorage.removeItem("MEMBER_ID");
      sessionStorage.removeItem("KAKAO_ID");
      sessionStorage.removeItem("KAKAO_IMAGE");
      sessionStorage.removeItem("KAKAO_NAME");
      localStorage.removeItem("ACCESS_TOKEN");
      setM_image("");
      setMember_id("");
      window.location.href = "/login";
    } else {
      return;
    }
  }

  return (
    <div>
      {member_id !== null ? (
        <Nav.Link
          onClick={handleClickLogout}
          style={{ fontSize: "14px", paddingTop: "13px" }}
        >
          로그아웃
        </Nav.Link>
      ) : (
        ""
      )}
    </div>
  );
}

// member_id === null : 비로그인, member_id !== null : 로그인
export function Profile({ member_id, kakao_id, m_image, kakao_name }) {
  //로그인(true) 비로그인(false) 구분
  const [login, setLogin] = useState(true);

  useEffect(() => {
    if (!sessionStorage.getItem("MEMBER_ID")) {
      setLogin(false);
    }
  }, []);

  console.log("profile//member_id : " + member_id);
  console.log("profile//kakao_id : " + kakao_id);
  console.log("profile//m_image : " + m_image);
  const kakao_image = sessionStorage.getItem("KAKAO_IMAGE");

  // 로그인 상태(member_id session 존재) 비로그인 상태 구분
  function handleClickProfile(e) {
    if (member_id || kakao_id) {
      if (e.target.id === "wishList") {
        window.location.href = "/wishList";
      }
      if (e.target.id === "buyList") {
        window.location.href = "/buyList";
      }
      if (e.target.id === "writeList") {
        window.location.href = "/writeList/1";
      }
      if (e.target.id === "editMember") {
        window.location.href = "/editMember";
      }
    } else {
      window.location.href = "/login";
    }
  }

  function handleClickSignup() {
    window.location.href = "/signup";
  }

  return (
    <Container style={{ width: "15%", padding: "0px", margin: "0px" }}>
      <NavDropdown
        title={
          <span>
            {m_image ? (
              <img
                src={require("../img/profileImg/" + m_image)}
                style={{ width: "30px", height: "30px" }}
                className="border rounded-circle"
                alt="img"
              />
            ) : kakao_image ? (
              <img
                src={kakao_image}
                style={{ width: "30px", height: "30px" }}
                className="border rounded-circle"
                alt="img"
              />
            ) : (
              <span style={{ width: "30px", height: "30px" }}>
                <PersonCircle style={{ width: "30px", height: "30px" }} />
              </span>
            )}
            <span style={{ marginLeft: "4px", fontSize: "14px" }}>
              {kakao_name || member_id || ""}
            </span>
          </span>
        }
        id="nav-dropdown"
      >
        <div
          eventkey="4.1"
          style={{
            fontSize: "14px",
            paddingTop: "0px",
            paddingBottom: "0px",
            paddingLeft: "11px",
            paddingRight: "11px",
          }}
        >
          <span style={{ fontWeight: "bold" }}>
            {kakao_name || member_id || "방문객"}
          </span>
          님 환영합니다!
        </div>
        <NavDropdown.Divider />

        {login ? (
          <div>
            <NavDropdown.Item
              eventKey="4.1"
              style={{
                fontSize: "14px",
                fontWeight: "bold",
                paddingTop: "0px",
                paddingBottom: "7px",
              }}
              onClick={handleClickProfile}
              id="wishList"
            >
              위시리스트
            </NavDropdown.Item>

            <NavDropdown.Item
              eventKey="4.1"
              style={{
                fontSize: "14px",
                fontWeight: "bold",
                paddingTop: "0px",
                paddingBottom: "7px",
              }}
              onClick={handleClickProfile}
              id="buyList"
            >
              구매내역
            </NavDropdown.Item>
            <NavDropdown.Item
              eventKey="4.1"
              style={{
                fontSize: "14px",
                fontWeight: "bold",
                paddingTop: "0px",
                paddingBottom: "7px",
              }}
              onClick={handleClickProfile}
              id="writeList"
            >
              댓글리스트
            </NavDropdown.Item>
            <NavDropdown.Item
              eventKey="4.1"
              style={{
                fontSize: "14px",
                fontWeight: "bold",
                paddingTop: "0px",
                paddingBottom: "0px",
              }}
              onClick={handleClickProfile}
              id="editMember"
            >
              정보수정
            </NavDropdown.Item>
          </div>
        ) : (
          <NavDropdown.Item
            onClick={handleClickSignup}
            style={{ cursor: "default" }}
          >
            <Col style={{ fontSize: "13px" }}>
              <span style={{ fontWeight: "bold", color: "red" }}>
                회원가입
              </span>
              을 하시면 AXCITINGAMUSEMENT의
            </Col>
            <Col style={{ fontSize: "13px" }}>
              다양한 컨텐츠를 이용하실 수 있습니다.
            </Col>
          </NavDropdown.Item>
        )}
      </NavDropdown>
    </Container>
  );
}
