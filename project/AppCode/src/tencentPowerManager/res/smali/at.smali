.class final Lat;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Las;


# direct methods
.method constructor <init>(Las;)V
    .locals 0

    iput-object p1, p0, Lat;->a:Las;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lat;->a:Las;

    iget-object v0, v0, Las;->a:Lar;

    invoke-virtual {v0}, Lar;->f()V

    iget-object v0, p0, Lat;->a:Las;

    iget-object v0, v0, Las;->a:Lar;

    iget-object v0, v0, Lar;->c:Lde;

    invoke-virtual {v0}, Lde;->dismiss()V

    return-void
.end method
