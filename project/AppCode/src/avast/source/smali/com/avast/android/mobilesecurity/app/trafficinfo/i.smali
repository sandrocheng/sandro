.class Lcom/avast/android/mobilesecurity/app/trafficinfo/i;
.super Ljava/lang/Object;
.source "TrafficInfoAppsCursorLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field a:Lcom/avast/android/mobilesecurity/app/manager/a/a/g;

.field b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/i;->b:I

    .line 59
    new-instance v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/g;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/a/g;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/i;->a:Lcom/avast/android/mobilesecurity/app/manager/a/a/g;

    .line 60
    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/mobilesecurity/app/trafficinfo/h;Lcom/avast/android/mobilesecurity/app/trafficinfo/h;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 65
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/i;->b:I

    packed-switch v0, :pswitch_data_0

    .line 79
    const/4 v0, 0x0

    .line 82
    :goto_0
    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/i;->a:Lcom/avast/android/mobilesecurity/app/manager/a/a/g;

    invoke-virtual {v0, p1, p2}, Lcom/avast/android/mobilesecurity/app/manager/a/a/g;->a(Lcom/avast/android/mobilesecurity/app/manager/a/a/d;Lcom/avast/android/mobilesecurity/app/manager/a/a/d;)I

    move-result v0

    .line 85
    :goto_1
    return v0

    .line 67
    :pswitch_0
    iget-wide v0, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->a:J

    iget-wide v2, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->b:J

    add-long/2addr v0, v2

    iget-wide v2, p2, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->a:J

    sub-long/2addr v0, v2

    iget-wide v2, p2, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->b:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 68
    goto :goto_0

    .line 70
    :pswitch_1
    iget-wide v0, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->c:J

    iget-wide v2, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->o:J

    add-long/2addr v0, v2

    iget-wide v2, p2, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p2, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->o:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 71
    goto :goto_0

    .line 73
    :pswitch_2
    iget-wide v0, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->p:J

    iget-wide v2, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->q:J

    add-long/2addr v0, v2

    iget-wide v2, p2, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->p:J

    sub-long/2addr v0, v2

    iget-wide v2, p2, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->q:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 74
    goto :goto_0

    .line 76
    :pswitch_3
    iget-wide v0, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->r:J

    iget-wide v2, p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->s:J

    add-long/2addr v0, v2

    iget-wide v2, p2, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->r:J

    sub-long/2addr v0, v2

    iget-wide v2, p2, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;->s:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 77
    goto :goto_0

    .line 85
    :cond_0
    mul-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    check-cast p1, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;

    check-cast p2, Lcom/avast/android/mobilesecurity/app/trafficinfo/h;

    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/trafficinfo/i;->a(Lcom/avast/android/mobilesecurity/app/trafficinfo/h;Lcom/avast/android/mobilesecurity/app/trafficinfo/h;)I

    move-result v0

    return v0
.end method
