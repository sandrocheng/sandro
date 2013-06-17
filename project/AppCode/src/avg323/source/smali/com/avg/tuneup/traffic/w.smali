.class Lcom/avg/tuneup/traffic/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/traffic/TrafficMeterActivity;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/traffic/TrafficMeterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/traffic/w;->a:Lcom/avg/tuneup/traffic/TrafficMeterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/traffic/w;->a:Lcom/avg/tuneup/traffic/TrafficMeterActivity;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->a(Lcom/avg/tuneup/traffic/TrafficMeterActivity;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avg/a/d;->ab_btn_settings_p:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/w;->a:Lcom/avg/tuneup/traffic/TrafficMeterActivity;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->a(Lcom/avg/tuneup/traffic/TrafficMeterActivity;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avg/a/d;->ab_btn_settings:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
