.class Lorg/antivirus/ui/BaseToolListActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/BaseToolListActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/BaseToolListActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/BaseToolListActivity$7;->a:Lorg/antivirus/ui/BaseToolListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/ui/BaseToolListActivity$7;->a:Lorg/antivirus/ui/BaseToolListActivity;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/BaseToolListActivity;->a(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
