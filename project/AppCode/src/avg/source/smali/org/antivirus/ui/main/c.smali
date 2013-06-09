.class final Lorg/antivirus/ui/main/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/main/AntivirusMainScreen;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/main/AntivirusMainScreen;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/main/c;->a:Lorg/antivirus/ui/main/AntivirusMainScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/main/c;->a:Lorg/antivirus/ui/main/AntivirusMainScreen;

    invoke-virtual {v0, p1}, Lorg/antivirus/ui/main/AntivirusMainScreen;->onClickMainButton(Landroid/view/View;)V

    return-void
.end method
