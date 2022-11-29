class Users::RegistrationsController < Devise::RegistrationsController
  before_action :sign_up_params, only: [:create]
  respond_to :html, :js

  def create
    super
    course = Course.find(params[:course_id])
    if resource.teacher?
      resource.create_course_teacher(course: course)
    else
      resource.create_course_student(course: course)
    end
    # @coupon = Coupon.find_by(code: params[:user_coupon_code][0]) if params[:user_coupon_code].present?

    # @user = User.new(sign_up_params)

    # if @coupon && (@coupon.coupon_duration >= Time.zone.today) && @coupon.uses_count.positive?
    #   if @user.save
    #     @user.create_organization(name: params[:user_org_name][0], trial_period_status: :promo_unactive)
    #     @coupon.update(uses_count: @coupon.uses_count - 1)
    #     @user.admin!
    #     PurchasedProduct.create(
    #       expiration_date: @coupon.product_duration,
    #       order_date: Time.zone.today,
    #       payment_reference_code: 'PROMO',
    #       purchase_date: Time.zone.today,
    #       purchase_price: 0.0,
    #       agents_number: @coupon.product_count * 30,
    #       groups_number: @coupon.product_count,
    #       reference_code: 'PROMO',
    #       response_code: 'PROMO',
    #       status: :approved,
    #       product_type: @coupon.type_control,
    #       organization_id: @user.my_organization.id,
    #       product_id: @coupon.product.id
    #     )
    #     assign_tasks
    #     assign_incentives

    #     flash[:notice] = 'Cupón activado. Se envió el correo de confirmación.'
    #   else
    #     render :new, error: 'No se logro crear el nuevo usuario.'
    #     return
    #   end
    # else
    #   flash[:alert] = 'Lo sentimos este cupón no es válido.'
    # end

    # redirect_to new_user_session_path
  end

  private

  def sign_up_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :username,
      :email,
      :role,
      :password,
      :password_confirmation
    )
  end
end
