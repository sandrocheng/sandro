.class final Labc;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Laau;


# direct methods
.method constructor <init>(Laau;)V
    .locals 0

    iput-object p1, p0, Labc;->a:Laau;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Labc;->a:Laau;

    invoke-static {v0}, Laau;->i(Laau;)Z

    return-void
.end method
