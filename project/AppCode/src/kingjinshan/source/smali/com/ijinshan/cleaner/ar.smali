.class final Lcom/ijinshan/cleaner/ar;
.super Ljava/lang/Object;
.source "SDcardCleanerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/ijinshan/cleaner/ar;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/ijinshan/cleaner/ar;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    iget-object v0, v0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->d:Lcom/ijinshan/cleaner/aq;

    sget-object v1, Lcom/ijinshan/cleaner/aq;->a:Lcom/ijinshan/cleaner/aq;

    if-ne v0, v1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/ijinshan/cleaner/ar;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->c()V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/cleaner/ar;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    iget-object v0, v0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->d:Lcom/ijinshan/cleaner/aq;

    sget-object v1, Lcom/ijinshan/cleaner/aq;->b:Lcom/ijinshan/cleaner/aq;

    if-ne v0, v1, :cond_6

    .line 148
    iget-object v0, p0, Lcom/ijinshan/cleaner/ar;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a(Lcom/ijinshan/cleaner/SDcardCleanerActivity;Ljava/util/List;)Ljava/util/List;

    .line 149
    iget-object v0, p0, Lcom/ijinshan/cleaner/ar;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/cleaner/a/c;

    .line 150
    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/c;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/c;->d()Ljava/lang/String;

    move-result-object v0

    .line 152
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 153
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 154
    iget-object v5, p0, Lcom/ijinshan/cleaner/ar;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v5}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->b(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/ijinshan/cleaner/ar;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    const-string v1, "mg_rub_sdcard_clean"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/ijinshan/cleaner/ar;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->c(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/ijinshan/cleaner/ar;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->f()V

    goto :goto_0

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/ijinshan/cleaner/ar;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->b(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 164
    iget-object v0, p0, Lcom/ijinshan/cleaner/ar;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    const-string v1, "mg_rub_sdcard_clean_success"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/ijinshan/cleaner/ar;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->d(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)V

    .line 167
    new-instance v0, Lcom/ijinshan/cleaner/as;

    iget-object v1, p0, Lcom/ijinshan/cleaner/ar;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-direct {v0, v1}, Lcom/ijinshan/cleaner/as;-><init>(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)V

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/as;->start()V

    goto/16 :goto_0

    .line 169
    :cond_5
    iget-object v0, p0, Lcom/ijinshan/cleaner/ar;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->f()V

    goto/16 :goto_0

    .line 172
    :cond_6
    iget-object v0, p0, Lcom/ijinshan/cleaner/ar;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    iget-object v0, v0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->d:Lcom/ijinshan/cleaner/aq;

    sget-object v1, Lcom/ijinshan/cleaner/aq;->c:Lcom/ijinshan/cleaner/aq;

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/ijinshan/cleaner/ar;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->b()V

    .line 175
    iget-object v0, p0, Lcom/ijinshan/cleaner/ar;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->e(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/ijinshan/cleaner/at;

    move-result-object v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/ijinshan/cleaner/ar;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    new-instance v1, Lcom/ijinshan/cleaner/at;

    iget-object v2, p0, Lcom/ijinshan/cleaner/ar;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-direct {v1, v2}, Lcom/ijinshan/cleaner/at;-><init>(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)V

    invoke-static {v0, v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a(Lcom/ijinshan/cleaner/SDcardCleanerActivity;Lcom/ijinshan/cleaner/at;)Lcom/ijinshan/cleaner/at;

    .line 177
    iget-object v0, p0, Lcom/ijinshan/cleaner/ar;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->e(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/ijinshan/cleaner/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/at;->start()V

    goto/16 :goto_0
.end method
