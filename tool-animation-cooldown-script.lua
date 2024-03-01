local tool = script.Parent
local animation = Instance.new("Animation")
local assetID = "16288890384" -- example Asset ID
animation.AnimationId = "http://www.roblox.com/asset/?id=" .. assetID
local debounce = true
local cooldown = 10 -- set animation cooldown in seconds
tool.Activated:Connect(function()
	local humanoid = tool.Parent:FindFirstChild("Humanoid")
	local animationTrack = humanoid:LoadAnimation(animation)
	if not animationTrack.IsPlaying and debounce then
		debounce = false
		animationTrack:Play()
		animationTrack.Stopped:Wait() -- comment when you don't want to include animation time with cooldown
		task.wait(cooldown)
		debounce = true
	end
end)