.class final Lcom/ijinshan/kpref/h;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kpref/ListPreference;


# direct methods
.method constructor <init>(Lcom/ijinshan/kpref/ListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/ijinshan/kpref/h;->a:Lcom/ijinshan/kpref/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/ijinshan/kpref/h;->a:Lcom/ijinshan/kpref/ListPreference;

    invoke-static {v0, p2}, Lcom/ijinshan/kpref/ListPreference;->a(Lcom/ijinshan/kpref/ListPreference;I)I

    .line 248
    iget-object v0, p0, Lcom/ijinshan/kpref/h;->a:Lcom/ijinshan/kpref/ListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/ijinshan/kpref/ListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 249
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 250
    return-void
.end method
