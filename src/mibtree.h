#ifndef MIBTREE_H
#define MIBTREE_H

#include <QTreeWidget>
#include "common.h"

typedef struct {
  QString oid;
  QString name;
  QString syntax;
  QString access;
  QString status;
  QString index;
  QString description;
  QString oidplus;
} MIBNode;
// Registe MIBNode to QMetaType
Q_DECLARE_METATYPE(MIBNode*)

class MIBTree {
 public:
  MIBTree(QTreeWidget* tree);
  ~MIBTree();
  // load MIB file to tree
  Status loadMIB(QString fileName);
  MIBNode* getNodeByOid(const QString& oid);
  MIBNode* getNodeByName(const QString& name);

 private:
  // Tree Root
  QTreeWidgetItem* root;
  void destroyTree(QTreeWidgetItem* node);
  // correct oid
  void correctTree(QTreeWidgetItem* node, const QString& index);
  // add node to MIBTree
  void addNode(const QString& parentName,
               const QString& nodeName,
               const QString& pos,
               MIBNode* node = NULL);
  // init a new Node
  MIBNode* newNode();
  // find QTreeWidgetItem BY name
  QTreeWidgetItem* findNodeItemByName(QTreeWidgetItem* node,
                                      const QString& name);
  QTreeWidgetItem* findNodeItemByOid(QTreeWidgetItem* node, const QString& oid);
};

#endif  // MIBTREE_H
