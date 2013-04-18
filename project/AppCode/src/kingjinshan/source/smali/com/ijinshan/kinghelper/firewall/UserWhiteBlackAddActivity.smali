.class public Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;
.super Landroid/app/Activity;
.source "UserWhiteBlackAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field public static final a:Ljava/lang/String; = "UserWhiteBlackAddActivity_rule"

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3

.field private static final e:Z = false

.field private static final f:Ljava/lang/String; = "UserWhiteBlackAddActivity"

.field private static final g:Ljava/lang/String; = "UserWhiteBlackAddActivity_PhoneNumber"

.field private static final h:Ljava/lang/String; = "UserWhiteBlackAddActivity_Name"

.field private static final i:Ljava/lang/String; = "UserWhiteBlackAddActivity_ApplyMode"


# instance fields
.field private j:I

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/Spinner;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/ijinshan/kinghelper/firewall/a/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 259
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const v0, 0x7f0b00da

    new-array v1, v8, [Ljava/lang/Object;

    const v2, 0x7f0b00fa

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p0, v0, v1}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 265
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v7

    .line 345
    :goto_0
    return v0

    .line 269
    :cond_0
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 271
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v1, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    int-to-long v1, v1

    :goto_1
    invoke-static {v0, v5, v1, v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;IJ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 278
    const v1, 0x7f0b00dc

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 283
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v7

    .line 284
    goto :goto_0

    :cond_1
    move-wide v1, v3

    .line 275
    goto :goto_1

    .line 287
    :cond_2
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v1, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    int-to-long v1, v1

    :goto_2
    invoke-static {v0, v8, v1, v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;IJ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 290
    const v1, 0x7f0b00dd

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 295
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v7

    .line 296
    goto :goto_0

    :cond_3
    move-wide v1, v3

    .line 287
    goto :goto_2

    .line 300
    :cond_4
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 302
    if-eqz v1, :cond_5

    .line 303
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    :goto_3
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->n:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 311
    const v4, 0x7f0b00c5

    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v3, v8

    .line 321
    :goto_4
    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    if-nez v4, :cond_8

    .line 323
    iget v4, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->j:I

    invoke-static {v4, v0, v2, v3}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(ILjava/lang/String;Ljava/lang/String;I)J

    move-result-wide v4

    .line 334
    :goto_5
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 335
    const-string v6, "UserWhiteBlackAddActivity_PhoneNumber"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v0, "UserWhiteBlackAddActivity_Name"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 337
    const-string v0, "UserWhiteBlackAddActivity_ApplyMode"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    cmp-long v0, v4, v9

    if-lez v0, :cond_9

    .line 340
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->setResult(ILandroid/content/Intent;)V

    .line 345
    :goto_6
    cmp-long v0, v4, v9

    if-lez v0, :cond_a

    move v0, v8

    goto/16 :goto_0

    .line 305
    :cond_5
    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/ijinshan/kinghelper/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 314
    :cond_6
    const v4, 0x7f0b00c6

    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v3, v5

    .line 316
    goto :goto_4

    .line 317
    :cond_7
    const v4, 0x7f0b00c7

    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 319
    const/4 v3, 0x3

    goto :goto_4

    .line 330
    :cond_8
    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v4, v4, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    iget v5, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->j:I

    invoke-static {v4, v5, v0, v2, v3}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v2

    int-to-long v4, v2

    goto :goto_5

    .line 342
    :cond_9
    const v0, 0x7f0b05ca

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6

    :cond_a
    move v0, v7

    .line 345
    goto/16 :goto_0

    :cond_b
    move v3, v8

    goto :goto_4
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v8, 0x0

    .line 142
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_3

    if-eqz p3, :cond_3

    .line 144
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_1

    .line 150
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 151
    const-string v6, "number"

    .line 155
    const-string v7, "display_name"

    .line 157
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const-string v1, "UserWhiteBlackAddActivity"

    invoke-static {v0}, Landroid/database/DatabaseUtils;->dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 163
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 165
    const-string v3, "UserWhiteBlackAddActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->k:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->l:Landroid/widget/EditText;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 172
    :cond_0
    if-eqz v0, :cond_1

    .line 173
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_1
    :goto_0
    return-void

    .line 172
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_1
    if-eqz v1, :cond_2

    .line 173
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 177
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    if-ne p2, v1, :cond_6

    if-eqz p3, :cond_6

    .line 179
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 180
    if-eqz v1, :cond_1

    .line 183
    :try_start_2
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 184
    if-eqz v0, :cond_4

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 185
    const-string v1, "address"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 187
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->l:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ijinshan/kinghelper/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 193
    :cond_4
    if-eqz v0, :cond_1

    .line 194
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 193
    :catchall_1
    move-exception v0

    move-object v1, v8

    :goto_2
    if-eqz v1, :cond_5

    .line 194
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 198
    :cond_6
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    .line 200
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_1

    .line 204
    :try_start_4
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    .line 205
    if-eqz v0, :cond_7

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 206
    const-string v1, "number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->l:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ijinshan/kinghelper/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 214
    :cond_7
    if-eqz v0, :cond_1

    .line 215
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 214
    :catchall_2
    move-exception v0

    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_8

    .line 215
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 214
    :catchall_3
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3

    .line 193
    :catchall_4
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_2

    .line 172
    :catchall_5
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    const/4 v5, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080024

    if-ne v0, v1, :cond_c

    .line 225
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b00da

    new-array v1, v8, [Ljava/lang/Object;

    const v2, 0x7f0b00fa

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p0, v0, v1}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    :goto_0
    move v0, v7

    :goto_1
    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->setResult(ILandroid/content/Intent;)V

    .line 227
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->finish()V

    .line 232
    :cond_1
    :goto_2
    return-void

    .line 225
    :cond_2
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v1, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    int-to-long v1, v1

    :goto_3
    invoke-static {v0, v5, v1, v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;IJ)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0b00dc

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_3
    move-wide v1, v3

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v1, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    int-to-long v1, v1

    :goto_4
    invoke-static {v0, v8, v1, v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;IJ)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f0b00dd

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_5
    move-wide v1, v3

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->n:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0b00c5

    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v3, v8

    :goto_6
    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    if-nez v4, :cond_a

    iget v4, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->j:I

    invoke-static {v4, v0, v2, v3}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(ILjava/lang/String;Ljava/lang/String;I)J

    move-result-wide v4

    :goto_7
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, "UserWhiteBlackAddActivity_PhoneNumber"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "UserWhiteBlackAddActivity_Name"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v0, "UserWhiteBlackAddActivity_ApplyMode"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_b

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->setResult(ILandroid/content/Intent;)V

    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_0

    move v0, v8

    goto/16 :goto_1

    :cond_7
    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/ijinshan/kinghelper/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_8
    const v4, 0x7f0b00c6

    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v3, v5

    goto :goto_6

    :cond_9
    const v4, 0x7f0b00c7

    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x3

    goto :goto_6

    :cond_a
    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v4, v4, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    iget v5, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->j:I

    invoke-static {v4, v5, v0, v2, v3}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v2

    int-to-long v4, v2

    goto :goto_7

    :cond_b
    const v0, 0x7f0b05ca

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_8

    .line 229
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080025

    if-ne v0, v1, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->finish()V

    goto/16 :goto_2

    :cond_d
    move v3, v8

    goto/16 :goto_6
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->requestWindowFeature(I)Z

    .line 72
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "rule_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->j:I

    .line 74
    invoke-virtual {p0, v3}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->setResult(I)V

    .line 76
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->setContentView(I)V

    .line 77
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->o:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->o:Landroid/widget/TextView;

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->j:I

    if-ne v1, v2, :cond_1

    const v1, 0x7f0b0002

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->k:Landroid/widget/EditText;

    .line 83
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 84
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->l:Landroid/widget/EditText;

    .line 85
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 87
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->m:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->n:Landroid/widget/Spinner;

    .line 90
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->j:I

    if-ne v0, v2, :cond_2

    move v0, v3

    .line 92
    :goto_1
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->n:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 95
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "UserWhiteBlackAddActivity_rule"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/a/g;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    .line 100
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    if-eqz v0, :cond_8

    .line 106
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    if-ne v0, v4, :cond_3

    .line 107
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->o:Landroid/widget/TextView;

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 110
    :goto_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget-object v1, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget-object v1, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/ijinshan/kinghelper/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 120
    :cond_0
    :goto_3
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget-object v1, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    if-ne v0, v4, :cond_5

    .line 122
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->n:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 138
    :goto_4
    return-void

    .line 78
    :cond_1
    const v1, 0x7f0b0007

    goto/16 :goto_0

    .line 90
    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->o:Landroid/widget/TextView;

    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget-object v1, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    const v1, 0x7f0b00de

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget-object v1, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/ijinshan/kinghelper/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    goto :goto_3

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    if-ne v0, v2, :cond_6

    .line 124
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->n:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 125
    :cond_6
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->p:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 126
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->n:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 128
    :cond_7
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->n:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 134
    :cond_8
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080020

    if-ne v0, v1, :cond_2

    .line 237
    if-nez p2, :cond_1

    .line 238
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ijinshan/kinghelper/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080021

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 250
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0
.end method
