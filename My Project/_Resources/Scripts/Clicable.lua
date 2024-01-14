-- BaseObject.script

local M = {}

function M.init(self)
	--go.animate(".", "euler.z", go.PLAYBACK_LOOP_FORWARD, 360, go.EASING_LINEAR, 60 / self.speed)
	msg.post(".", "acquire_input_focus")  -- Asegúrate de que el objeto pueda recibir eventos de entrada
end

function M.on_message(self, message_id, message, sender)
	if message_id == hash("clicked") then
		self:clicked()
	end
end

function M.clicked(self)
	-- Lógica genérica para cuando el objeto es clicado
	print("¡Objeto clicado genérico!")
	-- Agrega la lógica que desees realizar al hacer clic en este objeto
	GameController.update_score(0)
	--go.delete()
end

return M
