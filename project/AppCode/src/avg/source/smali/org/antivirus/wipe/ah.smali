.class final Lorg/antivirus/wipe/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/wipe/af;


# direct methods
.method constructor <init>(Lorg/antivirus/wipe/af;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/wipe/ah;->a:Lorg/antivirus/wipe/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/wipe/ah;->a:Lorg/antivirus/wipe/af;

    iget-object v0, v0, Lorg/antivirus/wipe/af;->b:Lorg/antivirus/wipe/ae;

    iget-object v0, v0, Lorg/antivirus/wipe/ae;->b:Lorg/antivirus/wipe/WipeSd;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeSd;->a(Lorg/antivirus/wipe/WipeSd;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/wipe/ah;->a:Lorg/antivirus/wipe/af;

    iget-object v0, v0, Lorg/antivirus/wipe/af;->b:Lorg/antivirus/wipe/ae;

    iget-object v0, v0, Lorg/antivirus/wipe/ae;->b:Lorg/antivirus/wipe/WipeSd;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeSd;->a(Lorg/antivirus/wipe/WipeSd;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
