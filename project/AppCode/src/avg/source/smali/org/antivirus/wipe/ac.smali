.class final Lorg/antivirus/wipe/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/wipe/WipeSd;


# direct methods
.method constructor <init>(Lorg/antivirus/wipe/WipeSd;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/wipe/ac;->a:Lorg/antivirus/wipe/WipeSd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/wipe/ac;->a:Lorg/antivirus/wipe/WipeSd;

    invoke-virtual {v0}, Lorg/antivirus/wipe/WipeSd;->finish()V

    return-void
.end method
