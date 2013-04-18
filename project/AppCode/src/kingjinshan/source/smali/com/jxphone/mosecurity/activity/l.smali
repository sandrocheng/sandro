.class final Lcom/jxphone/mosecurity/activity/l;
.super Ljava/lang/Object;
.source "BaseContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/s;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Lcom/jxphone/mosecurity/c/c;

.field final synthetic e:Lcom/jxphone/mosecurity/activity/BaseContactActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;Lcom/jxphone/mosecurity/activity/s;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/jxphone/mosecurity/c/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/l;->e:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    iput-object p2, p0, Lcom/jxphone/mosecurity/activity/l;->a:Lcom/jxphone/mosecurity/activity/s;

    iput-object p3, p0, Lcom/jxphone/mosecurity/activity/l;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/jxphone/mosecurity/activity/l;->c:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/jxphone/mosecurity/activity/l;->d:Lcom/jxphone/mosecurity/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 424
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/l;->a:Lcom/jxphone/mosecurity/activity/s;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/l;->e:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/l;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jxphone/mosecurity/activity/l;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jxphone/mosecurity/activity/l;->d:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jxphone/mosecurity/activity/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method
