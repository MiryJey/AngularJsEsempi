<div>
	<br> <br>
	<form name="formPrenotazione" ng-submit="prenotaAppuntamento()"
		ng-controller="PrenotazioneController">

		<table>
			<tr>
				<td style="width: 40%">
					<div class="form-group">
						<label>Nome*</label> <input type="text" name="nome"
							class="form-control" ng-model="prenotazione.nome" required>

					</div>


					<div class="form-group">
						<label>Cognome*</label> <input type="text" name="cognome"
							class="form-control" ng-model="prenotazione.cognome" required>

					</div>

					<div class="form-group">
						<label>Numero Telefono*</label> <input type="text"
							name="numeroTelefono" class="form-control"
							ng-model="prenotazione.numeroTelefono" required>
					</div>

					<div class="form-group">
						<label>Email*</label> <input type="email" name="email"
							class="form-control" ng-model="prenotazione.email" required>
					</div>



					<div class="form-group">

						<label>Data*</label>
						<div class="input-group">
							<input id="data" type="text" class="form-control input-sm"
								min-date="today" datepicker-popup="dd/MM/yyyy"
								ng-model="prenotazione.data" is-open="openedPopupData" required />
							<span class="input-group-btn">
								<button type="button" class="btn btn-default"
									ng-click="openDataPopup($event)">
									<i class="glyphicon glyphicon-calendar"></i>
								</button>
							</span>
						</div>
					</div>

					<div class="form-group">
						<label>Ora* (dalle 9:00 alle 19:00)</label><input id="ora" type="time"
							class="form-control input-sm" ng-model="prenotazione.ora"
							min="09:00:00" max="19:00:00"
							required /> </span>
					</div>

					<div class="form-group">
						<input type="checkbox" required /> <span>Dichiaro di aver
							letto l'informativa rilasciata ai sensi dell'art. 13 D.Lgs
							196/03.</span>
					</div>

				</td>

				<td ng-if="!isMobileDevice" style="width: 40%;"><span>Prenota un appuntamento in
						negozio, il nostro staff � sempre disponibile per qualsiasi tipo
						di consulenza. La prenotazione avr� valore solo dopo una nostra
						conferma telefonica o via email. Verificare la correttezza dei
						recapiti indicati</span></td>
				<td style="width: 20%;"></td>
			</tr>


		</table>
		<br>
		<button type="submit" class="btn btn-primary"
			ng-disabled="formPrenotazione.$invalid">Prenota Appuntamento</button>
	</form>
</div>