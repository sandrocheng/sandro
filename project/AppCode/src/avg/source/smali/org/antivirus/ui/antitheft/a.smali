.class final Lorg/antivirus/ui/antitheft/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/antitheft/AntiTheftActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/antitheft/AntiTheftActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/antitheft/a;->a:Lorg/antivirus/ui/antitheft/AntiTheftActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lorg/antivirus/ui/antitheft/a;->a:Lorg/antivirus/ui/antitheft/AntiTheftActivity;

    invoke-static {v1, v0}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->a(Lorg/antivirus/ui/antitheft/AntiTheftActivity;Z)V

    return-void
.end method
