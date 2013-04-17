.class public final Lbgk;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)V
    .locals 0

    iput-object p1, p0, Lbgk;->a:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const v5, 0x7f02012e

    const v4, 0x7f02012d

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lbgk;->a:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->a(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Lhm;

    move-result-object v0

    iget-object v0, v0, Lhm;->a:Landroid/content/SharedPreferences;

    const-string v1, "need_save_file_status"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbgk;->a:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->b(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbgk;->a:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->b(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbgk;->a:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->c(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbgk;->a:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->c(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbgk;->a:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->d(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f0200ca

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lbgk;->a:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->a(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Lhm;

    move-result-object v0

    iget-object v0, v0, Lhm;->a:Landroid/content/SharedPreferences;

    const-string v1, "need_save_file_status"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbgk;->a:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->b(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbgk;->a:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->b(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lbgk;->a:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->e(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbgk;->a:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->f(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200d0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lbgk;->a:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->f(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lbgk;->a:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->e(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lbgk;->a:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->g(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lbgk;->a:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->h(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lbgk;->a:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->d(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f0200cb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lbgk;->a:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    invoke-static {v2, v1, v0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->a(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;II)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
