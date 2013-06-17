.class Lcom/antivirus/ui/antitheft/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/antitheft/StopShoutActivity;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/antitheft/StopShoutActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/antitheft/ac;->a:Lcom/antivirus/ui/antitheft/StopShoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/ac;->a:Lcom/antivirus/ui/antitheft/StopShoutActivity;

    invoke-static {v0}, Lcom/antivirus/ui/antitheft/StopShoutActivity;->a(Lcom/antivirus/ui/antitheft/StopShoutActivity;)V

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/ac;->a:Lcom/antivirus/ui/antitheft/StopShoutActivity;

    invoke-virtual {v0}, Lcom/antivirus/ui/antitheft/StopShoutActivity;->finish()V

    return-void
.end method
