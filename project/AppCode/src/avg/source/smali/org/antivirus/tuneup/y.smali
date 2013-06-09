.class final Lorg/antivirus/tuneup/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lorg/antivirus/tuneup/BatteryStateActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/BatteryStateActivity;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/y;->b:Lorg/antivirus/tuneup/BatteryStateActivity;

    iput-object p2, p0, Lorg/antivirus/tuneup/y;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/y;->a:Landroid/widget/Button;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/antivirus/tuneup/y;->a:Landroid/widget/Button;

    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
