.class final Lcom/ijinshan/kpref/o;
.super Landroid/os/Handler;
.source "PreferenceActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/kpref/PreferenceActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kpref/PreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/ijinshan/kpref/o;->a:Lcom/ijinshan/kpref/PreferenceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/ijinshan/kpref/o;->a:Lcom/ijinshan/kpref/PreferenceActivity;

    invoke-static {v0}, Lcom/ijinshan/kpref/PreferenceActivity;->a(Lcom/ijinshan/kpref/PreferenceActivity;)V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
