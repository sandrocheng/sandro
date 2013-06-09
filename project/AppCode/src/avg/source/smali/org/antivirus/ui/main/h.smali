.class final Lorg/antivirus/ui/main/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/main/AntivirusMainScreen;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/main/AntivirusMainScreen;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/main/h;->a:Lorg/antivirus/ui/main/AntivirusMainScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lorg/antivirus/ui/main/h;->a:Lorg/antivirus/ui/main/AntivirusMainScreen;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->a(Lorg/antivirus/ui/main/AntivirusMainScreen;Landroid/content/Intent;)V

    return-void
.end method
