#--
#  This file is one part of:
#  Rubygame -- Ruby code and bindings to SDL to facilitate game creation
#
#  Copyright (C) 2008  John Croisant
#
#  This library is free software; you can redistribute it and/or
#  modify it under the terms of the GNU Lesser General Public
#  License as published by the Free Software Foundation; either
#  version 2.1 of the License, or (at your option) any later version.
#
#  This library is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#  Lesser General Public License for more details.
#
#  You should have received a copy of the GNU Lesser General Public
#  License along with this library; if not, write to the Free Software
#  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
# ++


module Rubygame

  module Events

    class JoystickAxisMoved

      attr_reader :joystick_id
      attr_reader :axis
      attr_reader :value

      def initialize( joystick_id, axis, value )

        unless joystick_id.kind_of?(Fixnum) and joystick_id >= 0
          raise ArgumentError, "joystick_id must be an integer >= 0"
        end

        @joystick_id = joystick_id

        unless axis.kind_of?(Fixnum) and axis >= 0
          raise ArgumentError, "axis must be an integer >= 0"
        end

        @axis = axis

        unless value.kind_of?(Numeric) and value.between?(-1.0, 1.0)
          raise ArgumentError, "value must be a number in the range (-1.0)..(1.0)"
        end

        @value = value.to_f

     end

    end

  end
end
