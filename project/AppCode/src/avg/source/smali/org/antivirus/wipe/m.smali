.class final Lorg/antivirus/wipe/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/wipe/l;


# direct methods
.method constructor <init>(Lorg/antivirus/wipe/l;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/wipe/m;->a:Lorg/antivirus/wipe/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/wipe/m;->a:Lorg/antivirus/wipe/l;

    iget-object v0, v0, Lorg/antivirus/wipe/l;->b:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeByApp;->a(Lorg/antivirus/wipe/WipeByApp;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/wipe/m;->a:Lorg/antivirus/wipe/l;

    iget-object v0, v0, Lorg/antivirus/wipe/l;->b:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeByApp;->a(Lorg/antivirus/wipe/WipeByApp;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lorg/antivirus/wipe/m;->a:Lorg/antivirus/wipe/l;

    iget-object v0, v0, Lorg/antivirus/wipe/l;->b:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeByApp;->l(Lorg/antivirus/wipe/WipeByApp;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/wipe/m;->a:Lorg/antivirus/wipe/l;

    iget-object v0, v0, Lorg/antivirus/wipe/l;->b:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeByApp;->l(Lorg/antivirus/wipe/WipeByApp;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    return-void
.end method
