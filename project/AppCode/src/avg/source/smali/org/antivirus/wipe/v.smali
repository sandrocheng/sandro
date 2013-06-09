.class final Lorg/antivirus/wipe/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/wipe/s;


# direct methods
.method constructor <init>(Lorg/antivirus/wipe/s;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/wipe/v;->a:Lorg/antivirus/wipe/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/wipe/v;->a:Lorg/antivirus/wipe/s;

    iget-object v0, v0, Lorg/antivirus/wipe/s;->a:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeByApp;->a(Lorg/antivirus/wipe/WipeByApp;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/wipe/v;->a:Lorg/antivirus/wipe/s;

    iget-object v0, v0, Lorg/antivirus/wipe/s;->a:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeByApp;->a(Lorg/antivirus/wipe/WipeByApp;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
