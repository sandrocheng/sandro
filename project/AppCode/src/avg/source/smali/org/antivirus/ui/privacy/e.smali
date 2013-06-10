.class final Lorg/antivirus/ui/privacy/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/privacy/d;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/privacy/d;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/privacy/e;->a:Lorg/antivirus/ui/privacy/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/privacy/e;->a:Lorg/antivirus/ui/privacy/d;

    iget-object v0, v0, Lorg/antivirus/ui/privacy/d;->b:Lorg/antivirus/ui/privacy/PrivacyActivity;

    invoke-static {v0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->h(Lorg/antivirus/ui/privacy/PrivacyActivity;)Lorg/antivirus/ui/privacy/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/privacy/e;->a:Lorg/antivirus/ui/privacy/d;

    iget-object v0, v0, Lorg/antivirus/ui/privacy/d;->b:Lorg/antivirus/ui/privacy/PrivacyActivity;

    invoke-static {v0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->h(Lorg/antivirus/ui/privacy/PrivacyActivity;)Lorg/antivirus/ui/privacy/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/ui/privacy/f;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
