.class public final Lcom/keniu/security/main/bw;
.super Lcom/keniu/security/main/bs;
.source "ModuleBlocker.java"


# instance fields
.field private u:I

.field private v:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcom/keniu/security/main/bs;-><init>()V

    .line 24
    iput v0, p0, Lcom/keniu/security/main/bw;->u:I

    .line 25
    iput v0, p0, Lcom/keniu/security/main/bw;->v:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 30
    const-string v1, "main"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 31
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/core/h;->a()I

    move-result v1

    .line 32
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/core/h;->c()I

    move-result v2

    .line 34
    if-lez v1, :cond_0

    if-lez v2, :cond_0

    .line 35
    const v1, 0x7f0b0823

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 37
    :cond_0
    if-lez v1, :cond_1

    .line 38
    const v1, 0x7f0b0822

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_1
    if-lez v2, :cond_2

    .line 41
    const v1, 0x7f0b0821

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_2
    const v1, 0x7f0b0820

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_3
    const-string v1, "process_left"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 45
    const v1, 0x7f0b0824

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_4
    const-string v1, "process_right"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 47
    const v1, 0x7f0b0803

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 48
    :cond_5
    const-string v1, "description"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 49
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/core/h;->a()I

    move-result v1

    .line 50
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/core/h;->c()I

    move-result v2

    .line 52
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->d()Z

    move-result v3

    if-nez v3, :cond_6

    .line 53
    const-string v0, "\u672a\u5f00\u542f,\u65e0\u6cd5\u62e6\u622a\u9a9a\u6270\u77ed\u4fe1\u548c\u7535\u8bdd"

    sget-object v1, Lcom/keniu/security/util/ae;->c:Lcom/keniu/security/util/ae;

    invoke-static {v0, v1}, Lcom/keniu/security/util/ad;->a(Ljava/lang/CharSequence;Lcom/keniu/security/util/ae;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_6
    if-lez v1, :cond_7

    if-lez v2, :cond_7

    .line 56
    const v3, 0x7f0b0828

    invoke-virtual {v0, v3}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_7
    if-lez v1, :cond_8

    .line 61
    const v2, 0x7f0b0826

    invoke-virtual {v0, v2}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 65
    :cond_8
    if-lez v2, :cond_9

    .line 66
    const v1, 0x7f0b0827

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 70
    :cond_9
    iget v1, p0, Lcom/keniu/security/main/bw;->u:I

    if-lez v1, :cond_a

    iget v1, p0, Lcom/keniu/security/main/bw;->v:I

    if-lez v1, :cond_a

    .line 71
    const-string v0, "\u672c\u6708\u5df2\u62e6\u622a%d\u6761\u77ed\u4fe1\uff0c%d\u4e2a\u7535\u8bdd"

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/keniu/security/main/bw;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/keniu/security/main/bw;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 73
    :cond_a
    iget v1, p0, Lcom/keniu/security/main/bw;->u:I

    if-lez v1, :cond_b

    .line 74
    const-string v0, "\u672c\u6708\u5df2\u62e6\u622a%d\u6761\u77ed\u4fe1"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/keniu/security/main/bw;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 75
    :cond_b
    iget v1, p0, Lcom/keniu/security/main/bw;->v:I

    if-lez v1, :cond_c

    .line 76
    const-string v0, "\u672c\u6708\u5df2\u62e6\u622a%d\u4e2a\u7535\u8bdd"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/keniu/security/main/bw;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 78
    :cond_c
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->d()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b0825

    invoke-virtual {v0, v2}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , \u5f53\u524d\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/firewall/df;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 84
    :cond_d
    const v1, 0x7f0b0260

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 88
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 143
    if-nez p2, :cond_2

    .line 144
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/core/h;->a()I

    move-result v0

    .line 146
    if-lez v0, :cond_1

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    const-string v1, "FirewallLogTabActivity_current_tab"

    const-string v2, "FirewallLogTabActivity_current_tab_sms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    const-string v1, "FirewallLogTabActivity_current_tab"

    const-string v2, "FirewallLogTabActivity_current_tab_call"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 159
    :cond_2
    if-ne p2, v0, :cond_0

    .line 160
    invoke-static {p1}, Lcom/ijinshan/kinghelper/firewall/core/h;->b(Landroid/content/Context;)V

    .line 161
    invoke-static {p1}, Lcom/ijinshan/kinghelper/firewall/core/h;->a(Landroid/content/Context;)V

    .line 162
    invoke-virtual {p0, v0}, Lcom/keniu/security/main/bw;->a(I)V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x2

    return v0
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/keniu/security/main/bw;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 175
    const/4 v0, 0x1

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/keniu/security/main/bn;->d:I

    return v0
.end method

.method public final e()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 94
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/keniu/security/main/bn;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 97
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 99
    invoke-virtual {v0, v6}, Ljava/util/Date;->setDate(I)V

    .line 100
    invoke-virtual {v0, v5}, Ljava/util/Date;->setHours(I)V

    .line 101
    invoke-virtual {v0, v5}, Ljava/util/Date;->setMinutes(I)V

    .line 102
    invoke-virtual {v0, v5}, Ljava/util/Date;->setSeconds(I)V

    .line 104
    const-string v1, "date > ?"

    .line 105
    new-array v2, v6, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 107
    invoke-static {v1, v2, v8}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_0

    .line 110
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lcom/keniu/security/main/bw;->u:I

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_0
    const-string v1, "date > ?"

    .line 115
    new-array v2, v6, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    .line 116
    invoke-static {v1, v2, v8}, Lcom/ijinshan/kinghelper/firewall/a/a;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_1

    .line 119
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/keniu/security/main/bw;->v:I

    .line 120
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_1
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/core/h;->a()I

    move-result v0

    .line 125
    if-lez v0, :cond_2

    .line 126
    invoke-super {p0, v7}, Lcom/keniu/security/main/bs;->a(I)V

    .line 138
    :goto_0
    return-void

    .line 130
    :cond_2
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/core/h;->c()I

    move-result v0

    .line 132
    if-lez v0, :cond_3

    .line 133
    invoke-super {p0, v7}, Lcom/keniu/security/main/bs;->a(I)V

    goto :goto_0

    .line 137
    :cond_3
    invoke-super {p0, v6}, Lcom/keniu/security/main/bs;->a(I)V

    goto :goto_0
.end method
