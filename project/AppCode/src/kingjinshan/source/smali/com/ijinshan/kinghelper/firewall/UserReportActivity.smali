.class public Lcom/ijinshan/kinghelper/firewall/UserReportActivity;
.super Lcom/keniu/security/main/BaseTitleActivity;
.source "UserReportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:I = 0x2

.field private static final b:I = 0x3

.field private static final c:Z = false

.field private static final d:Ljava/lang/String; = "UserReportActivity"

.field private static final e:Ljava/lang/String; = "UserReportActivity_PhoneNumber"

.field private static final f:Ljava/lang/String; = "UserReportActivity_reason"

.field private static final g:Ljava/lang/String; = "UserReportActivity_des"


# instance fields
.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/Spinner;

.field private k:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/keniu/security/main/BaseTitleActivity;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 7

    .prologue
    const v2, 0x7f0b00fa

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 102
    const v0, 0x7f0b00da

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v4

    .line 127
    :goto_0
    return v0

    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    const-string v1, "\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 109
    const v0, 0x7f0b00db

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v4

    .line 110
    goto :goto_0

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 114
    const/4 v2, 0x0

    const/4 v3, 0x6

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {p0, v0, v2, v3, v1}, Lcom/ijinshan/kinghelper/firewall/core/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->k:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 117
    invoke-static {v0, v6}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0, v5}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 118
    const-string v1, ""

    invoke-static {v6, v0, v1, v5}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(ILjava/lang/String;Ljava/lang/String;I)J

    .line 122
    :cond_2
    invoke-static {p0}, Lcom/ijinshan/kinghelper/a/j;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    const v0, 0x7f0b0130

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2
    move v0, v5

    .line 127
    goto :goto_0

    .line 114
    :cond_3
    const-string v1, ""

    goto :goto_1

    .line 125
    :cond_4
    const v0, 0x7f0b0131

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v6, 0x0

    .line 132
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_3

    if-eqz p3, :cond_3

    .line 133
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 134
    if-eqz v1, :cond_1

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const-string v1, "address"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 143
    :cond_0
    if-eqz v0, :cond_1

    .line 144
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 143
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_2

    .line 144
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 148
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    .line 149
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_1

    .line 153
    :try_start_2
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 154
    if-eqz v0, :cond_4

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 155
    const-string v1, "number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 159
    :cond_4
    if-eqz v0, :cond_1

    .line 160
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 159
    :catchall_1
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_5

    .line 160
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 159
    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    .line 143
    :catchall_3
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0b0130

    const v2, 0x7f0b00fa

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 88
    const v1, 0x7f080024

    if-ne v1, v0, :cond_6

    .line 89
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const v0, 0x7f0b00da

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v4

    :goto_0
    if-eqz v0, :cond_0

    .line 90
    invoke-static {p0, v7, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->finish()V

    .line 96
    :cond_0
    :goto_1
    return-void

    .line 89
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const v0, 0x7f0b00db

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {p0, v0, v2, v3, v1}, Lcom/ijinshan/kinghelper/firewall/core/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->k:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    invoke-static {v0, v6}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0, v5}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ""

    invoke-static {v6, v0, v1, v5}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(ILjava/lang/String;Ljava/lang/String;I)J

    :cond_3
    invoke-static {p0}, Lcom/ijinshan/kinghelper/a/j;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0, v7, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_3
    move v0, v5

    goto :goto_0

    :cond_4
    const-string v1, ""

    goto :goto_2

    :cond_5
    const v0, 0x7f0b0131

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 93
    :cond_6
    const v1, 0x7f080025

    if-ne v1, v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->finish()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 58
    const v0, 0x7f03000f

    const v1, 0x7f0b0005

    invoke-super {p0, p1, v0, v1}, Lcom/keniu/security/main/BaseTitleActivity;->a(Landroid/os/Bundle;II)V

    .line 59
    invoke-virtual {p0, v3}, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->setResult(I)V

    .line 61
    const v0, 0x7f080081

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->h:Landroid/widget/EditText;

    .line 62
    const v0, 0x7f080083

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->i:Landroid/widget/EditText;

    .line 63
    const v0, 0x7f080082

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->j:Landroid/widget/Spinner;

    .line 64
    const v0, 0x7f080084

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->k:Landroid/widget/CheckBox;

    .line 66
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "UserReportActivity_PhoneNumber"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "UserReportActivity_reason"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "UserReportActivity_des"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->j:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 81
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method
