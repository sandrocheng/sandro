.class Lcom/avg/tuneup/traffic/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/traffic/TrafficMeterActivity;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/traffic/TrafficMeterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/traffic/x;->a:Lcom/avg/tuneup/traffic/TrafficMeterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/avg/tuneup/traffic/x;->a:Lcom/avg/tuneup/traffic/TrafficMeterActivity;

    invoke-virtual {v0}, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->m()V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/x;->a:Lcom/avg/tuneup/traffic/TrafficMeterActivity;

    const-string v1, "data_usage"

    const-string v2, "data_usage_settings"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
