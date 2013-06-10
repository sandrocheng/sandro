.class final Lorg/antivirus/ui/antitheft/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/antitheft/StopShoutActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/antitheft/StopShoutActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/antitheft/z;->a:Lorg/antivirus/ui/antitheft/StopShoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/z;->a:Lorg/antivirus/ui/antitheft/StopShoutActivity;

    invoke-virtual {v0}, Lorg/antivirus/ui/antitheft/StopShoutActivity;->finish()V

    return-void
.end method
