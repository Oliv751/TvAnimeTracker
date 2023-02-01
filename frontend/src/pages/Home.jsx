import ShowList from "../components/ShowList";
import Header from "../components/Header";

function Home() {
  return (
    <div>
      <Header />
      <h2>Last Shows</h2>
      <ShowList />
    </div>
  );
}

export default Home;
