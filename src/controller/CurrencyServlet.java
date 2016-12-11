package controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Currency;
import service.CurrencyCalculator;
import service.CurrencyRatesDownloader;

@WebServlet({ "/", "/currencies" })
public class CurrencyServlet extends HttpServlet {

	private CurrencyCalculator currencyCalculator;
	
	public CurrencyServlet(){
		CurrencyRatesDownloader ratesDownloader = new CurrencyRatesDownloader();
		currencyCalculator = new CurrencyCalculator(ratesDownloader);		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setAttribute("currencies", Currency.values());
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/index.jsp");
		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		BigDecimal amount = new BigDecimal(req.getParameter("amount"));
		Currency from = Currency.valueOf(req.getParameter("from"));
		Currency to = Currency.valueOf(req.getParameter("to"));

		BigDecimal result = currencyCalculator.calculate(amount, from, to);
		String equal = " = ";
		
		req.setAttribute("result", result.setScale(2, RoundingMode.HALF_DOWN));
		req.setAttribute("to", to);
		req.setAttribute("from", from);
		req.setAttribute("equal", equal);
		req.setAttribute("amount", amount);
		req.setAttribute("currencies", Currency.values());
		
		//resp.sendRedirect(req.getContextPath() + "/");

		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/index.jsp");
		rd.forward(req, resp);
		
	}

}
