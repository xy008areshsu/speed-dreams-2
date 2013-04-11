#!/usr/bin/env python
# -*- coding: utf-8 -*-


"""Credits menu.


"""

# Import: std
import sys

# Import: PyCEGUI
import PyCEGUI

# Import: Configuration
from configuration import TheConfig

# Import: Menu
from menu import Menu

# Credit menu
class MenuCredits(Menu):

	singleton = None

	def instance():
	
		if not MenuCredits.singleton:
			MenuCredits.singleton = MenuCredits()
			MenuCredits.singleton.initialize()
			MenuCredits.singleton.setup()
			
		return MenuCredits.singleton

	instance = staticmethod(instance)

	def __init__(self):

		Menu.__init__(self)
	
	# Initialize
	def initialize(self):

		name = "MenuCredits"

		# Use layout if specified.
		if TheConfig.useLayouts:
			
			window = Menu.initialize(self, name=name, title="Credits", layout="menucredits")
			
		else:
			
			# If no layout specified, go on building up the menu through code.
			window = Menu.initialize(self, name=name, title="Credits", background="SplashCredits")

			# Specific to this menu.
			winMgr = PyCEGUI.WindowManager.getSingleton()
			mclTable = winMgr.createWindow("CEGUIDemo/MultiColumnList", name + "/MclTable")
			mclTable.setXPosition(PyCEGUI.UDim(0.1, 0.0))
			mclTable.setYPosition(PyCEGUI.UDim(0.3, 0.0))
			mclTable.setWidth(PyCEGUI.UDim(0.8, 0.0))
			mclTable.setHeight(PyCEGUI.UDim(0.5, 0.0))
			mclTable.setProperty("Font", "TextSmall")

			window.addChildWindow(mclTable)

			btnPrev = PyCEGUI.WindowManager.getSingleton().createWindow("CEGUIDemo/ImageButton", name + "/BtnPrevPage")
			btnPrev.setTooltipText("Previous credits page")
			btnPrev.setXPosition(PyCEGUI.UDim(0.9, 0.0))
			btnPrev.setYPosition(PyCEGUI.UDim(0.7, 0.0))
			btnPrev.setWidth(PyCEGUI.UDim(0.07, 0.0))
			btnPrev.setHeight(PyCEGUI.UDim(0.1, 0.0))
			btnPrev.setProperty("NormalImage", "set:CEGUIDemo image:ArrowUpNormal")
			btnPrev.setProperty("HoverImage", "set:CEGUIDemo image:ArrowUpHighlight")
			btnPrev.setProperty("PushedImage", "set:CEGUIDemo image:ArrowUpPushed")
			btnPrev.setProperty("DisabledImage", "set:CEGUIDemo image:ArrowUpDisabled")

			window.addChildWindow(btnPrev)

			btnNext = PyCEGUI.WindowManager.getSingleton().createWindow("CEGUIDemo/ImageButton", name + "/BtnNextPage")
			btnNext.setTooltipText("Next credits page")
			btnNext.setXPosition(PyCEGUI.UDim(0.9, 0.0))
			btnNext.setYPosition(PyCEGUI.UDim(0.8, 0.0))
			btnNext.setWidth(PyCEGUI.UDim(0.07, 0.0))
			btnNext.setHeight(PyCEGUI.UDim(0.1, 0.0))
			btnNext.setProperty("NormalImage", "set:CEGUIDemo image:ArrowDownNormal")
			btnNext.setProperty("HoverImage", "set:CEGUIDemo image:ArrowDownHighlight")
			btnNext.setProperty("PushedImage", "set:CEGUIDemo image:ArrowDownPushed")
			btnNext.setProperty("DisabledImage", "set:CEGUIDemo image:ArrowDownDisabled")

			window.addChildWindow(btnNext)

			btnBack = PyCEGUI.WindowManager.getSingleton().createWindow("CEGUIDemo/Button", name + "/BtnBack")
			btnBack.setText("Back")
			btnBack.setTooltipText("Back to the main menu")
			btnBack.setXPosition(PyCEGUI.UDim(0.43, 0.0))
			btnBack.setYPosition(PyCEGUI.UDim(0.9, 0.0))
			btnBack.setWidth(PyCEGUI.UDim(0.15, 0.0))
			btnBack.setHeight(PyCEGUI.UDim(0.05, 0.0))
			btnBack.setProperty("Font", "MenuMedium")

			window.addChildWindow(btnBack)

		# Retrieve window descendants created here.
		self.mclTable = window.getChild(name + "/MclTable")
		self.btnPrev = window.getChild(name + "/BtnPrevPage")
		self.btnNext = window.getChild(name + "/BtnNextPage")
		self.btnBack = window.getChild(name + "/BtnBack")
		
		# Complete widget initialization (whatever creation mode : code or .layout).
		# TODO.
		self.mclTable.addColumn("Name / Role", 0, PyCEGUI.UDim(0.35, 0))
		self.mclTable.addColumn("Main contributions / Contact", 1, PyCEGUI.UDim(0.65, 0))

		# Note: Keep a reference to each listbox item,
		# otherwise they get garbage collected at the end of this function,
		# and then CEGUI crashes of course (see below : self.lbItems.append).
		self.lbItems = []
		for i in range(5):

			rowId = self.mclTable.addRow()

			lbItem = PyCEGUI.ListboxTextItem("my name")
			self.mclTable.setItem(lbItem, 0, rowId)
			self.lbItems.append(lbItem)

			lbItem = PyCEGUI.ListboxTextItem("my role")
			self.mclTable.setItem(lbItem, 1, rowId)
			self.lbItems.append(lbItem)

			rowId = self.mclTable.addRow()

			lbItem = PyCEGUI.ListboxTextItem("my contribs")
			self.mclTable.setItem(lbItem, 0, rowId)
			self.lbItems.append(lbItem)

			lbItem = PyCEGUI.ListboxTextItem("my web site")
			self.mclTable.setItem(lbItem, 1, rowId)
			self.lbItems.append(lbItem)

		return window

	# connectHandlers
	# - Wrapper method to define the subscription/listener relationships.
	# - If there are a lot, it may behoove the coder to encapsulate them in methods, then call those methods here.
	def connectHandlers(self):

		# Inherited connections.
		Menu.connectHandlers(self)

		# Specific connections.
		self.btnBack.subscribeEvent(PyCEGUI.PushButton.EventClicked, self, "onBackButtonClicked")

	def onBackButtonClicked(self, args):

		self.back()

	def onKeyDown(self, keyArgs):

		if keyArgs.scancode in (PyCEGUI.Key.Escape, PyCEGUI.Key.Return):
			self.onBackButtonClicked(keyArgs)
			return True

		return False
