.class final Lorg/antivirus/wipe/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lorg/antivirus/wipe/WipeSd;


# direct methods
.method constructor <init>(Lorg/antivirus/wipe/WipeSd;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/wipe/ab;->a:Lorg/antivirus/wipe/WipeSd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/wipe/ab;->a:Lorg/antivirus/wipe/WipeSd;

    invoke-virtual {v0}, Lorg/antivirus/wipe/WipeSd;->finish()V

    return-void
.end method
