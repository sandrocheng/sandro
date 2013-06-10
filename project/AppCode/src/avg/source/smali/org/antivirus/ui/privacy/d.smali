.class final Lorg/antivirus/ui/privacy/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lorg/antivirus/ui/privacy/PrivacyActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/privacy/PrivacyActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/privacy/d;->b:Lorg/antivirus/ui/privacy/PrivacyActivity;

    iput-object p2, p0, Lorg/antivirus/ui/privacy/d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lorg/antivirus/applocker/a;

    invoke-direct {v0}, Lorg/antivirus/applocker/a;-><init>()V

    iget-object v0, p0, Lorg/antivirus/ui/privacy/d;->b:Lorg/antivirus/ui/privacy/PrivacyActivity;

    iget-object v1, p0, Lorg/antivirus/ui/privacy/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lorg/antivirus/applocker/a;->d(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/antivirus/ui/privacy/PrivacyActivity;->b(Lorg/antivirus/ui/privacy/PrivacyActivity;I)I

    iget-object v0, p0, Lorg/antivirus/ui/privacy/d;->b:Lorg/antivirus/ui/privacy/PrivacyActivity;

    new-instance v1, Lorg/antivirus/ui/privacy/e;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/privacy/e;-><init>(Lorg/antivirus/ui/privacy/d;)V

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/privacy/PrivacyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
