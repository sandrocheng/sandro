.class final Lorg/antivirus/tuneup/v;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/BatteryStateActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/BatteryStateActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/v;->a:Lorg/antivirus/tuneup/BatteryStateActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lorg/antivirus/tuneup/v;->a:Lorg/antivirus/tuneup/BatteryStateActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lorg/antivirus/tuneup/BatteryStateActivity;->a(Lorg/antivirus/tuneup/BatteryStateActivity;Landroid/content/Intent;)V

    return-void
.end method
