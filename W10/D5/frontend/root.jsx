import React from "react";
import Tabs from "./tabs";
import Clock from "./clock";

const Root = () => {
  let tabsArray = [
    {title: "Tab1", content: "This is Tab1"},
    {title: "Tab2", content: "This is Tab2"}
  ];

  return (
    <div>
      <Clock />
      <Tabs tabsArray={tabsArray} />
    </div>
  )
}

export default Root;