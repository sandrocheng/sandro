.class Lcom/antivirus/antitheft/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Landroid/media/AudioManager;

.field final synthetic b:Lcom/antivirus/antitheft/m;


# direct methods
.method constructor <init>(Lcom/antivirus/antitheft/m;Landroid/media/AudioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/antitheft/n;->b:Lcom/antivirus/antitheft/m;

    iput-object p2, p0, Lcom/antivirus/antitheft/n;->a:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/antitheft/n;->a:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/antitheft/n;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/antivirus/antitheft/n;->b:Lcom/antivirus/antitheft/m;

    iget-object v1, v1, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    invoke-static {v1}, Lcom/antivirus/antitheft/k;->a(Lcom/antivirus/antitheft/k;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/antivirus/antitheft/n;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/antivirus/antitheft/n;->b:Lcom/antivirus/antitheft/m;

    iget-object v1, v1, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    invoke-static {v1}, Lcom/antivirus/antitheft/k;->b(Lcom/antivirus/antitheft/k;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :cond_0
    return-void
.end method
