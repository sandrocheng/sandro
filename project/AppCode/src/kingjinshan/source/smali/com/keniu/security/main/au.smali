.class final Lcom/keniu/security/main/au;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerOpenListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/keniu/security/main/au;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrawerOpened()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/keniu/security/main/au;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->i(Lcom/keniu/security/main/MainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/keniu/security/main/au;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->i(Lcom/keniu/security/main/MainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/keniu/security/main/au;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->i(Lcom/keniu/security/main/MainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/main/au;->a:Lcom/keniu/security/main/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/main/MainActivity;->a(Lcom/keniu/security/main/MainActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/main/au;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Lcom/keniu/security/a;->w()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 339
    invoke-virtual {v0}, Lcom/keniu/security/a;->x()V

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/main/au;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->j(Lcom/keniu/security/main/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/main/au;->a:Lcom/keniu/security/main/MainActivity;

    invoke-virtual {v1}, Lcom/keniu/security/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020140

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    iget-object v0, p0, Lcom/keniu/security/main/au;->a:Lcom/keniu/security/main/MainActivity;

    const-string v1, "mg_main_openbar"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 345
    return-void
.end method
