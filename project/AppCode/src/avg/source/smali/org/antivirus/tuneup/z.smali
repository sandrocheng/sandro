.class final Lorg/antivirus/tuneup/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/BatteryStateActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/BatteryStateActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/z;->a:Lorg/antivirus/tuneup/BatteryStateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lorg/antivirus/tuneup/z;->a:Lorg/antivirus/tuneup/BatteryStateActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatteryStateActivity;->a(Lorg/antivirus/tuneup/BatteryStateActivity;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/z;->a:Lorg/antivirus/tuneup/BatteryStateActivity;

    const-string v1, "battery_consumption"

    const-string v2, "battery_usage"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
