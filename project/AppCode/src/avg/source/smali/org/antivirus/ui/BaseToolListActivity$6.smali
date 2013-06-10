.class Lorg/antivirus/ui/BaseToolListActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/BaseToolListActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/BaseToolListActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/BaseToolListActivity$6;->a:Lorg/antivirus/ui/BaseToolListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/ui/BaseToolListActivity$6;->a:Lorg/antivirus/ui/BaseToolListActivity;

    invoke-virtual {v0}, Lorg/antivirus/ui/BaseToolListActivity;->b()I

    move-result v0

    iget-object v1, p0, Lorg/antivirus/ui/BaseToolListActivity$6;->a:Lorg/antivirus/ui/BaseToolListActivity;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/BaseToolListActivity;->c(I)V

    return-void
.end method
